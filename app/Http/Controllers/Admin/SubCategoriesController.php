<?php

namespace App\Http\Controllers\Admin;

use Auth;
use App\User;
use App\Categories;
use App\SubCategories;

use App\Http\Requests;
use Illuminate\Http\Request;
use Session;
use Intervention\Image\Facades\Image; 
use Illuminate\Support\Facades\DB;

class SubCategoriesController extends MainAdminController
{
	public function __construct()
    {
		 $this->middleware('auth');
		  
		parent::__construct(); 	
		  
    }
        public function subcate_featured_listing($listing_id,$status)
    {


        if(Auth::User()->usertype=="Admin")
        {
            
            $subcategories= SubCategories::findOrFail($listing_id);
 
            
            $subcategories->featured_listing = $status;
			$subcategories->save();
            \Session::flash('flash_message', 'Save changed');

            return redirect()->back();
        }
        else
        {
            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
             
        }
    }
    public function subcategories()    { 
        
              
        $subcategories = Categories::where('cat_parent','!=',0)->orderBy('category_name')->get();

        /*$subcategories = DB::table('sub_categories')
                           ->leftJoin('categories', 'sub_categories.cat_id', '=', 'categories.id')
                           ->select('sub_categories.*','categories.category_name')
                           ->get();*/
        
        if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }
         
        return view('admin.pages.subcategories',compact('subcategories'));
    }

    public function ajax_subcategories($cat_id)    { 
        
        //$cat_id = \Input::get('cat_id');
              
        $subcategories = SubCategories::where('cat_id',$cat_id)->orderBy('sub_category_name')->get();

         
         
        return view('admin.pages.ajax_subcategories',compact('subcategories','cat_id'));
    }
    
    public function addeditSubCategory()    { 
         
        if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }
        $categories = Categories::where('cat_parent',0)->orderBy('category_name','ASC')->get();
        
        return view('admin.pages.addeditSubCategory',compact('categories'));
    }
    
    public function addnew(Request $request)
    { 
    	
    	$data =  \Input::except(array('_token')) ;
	    
	    $rule=array(
		        'category' => 'required',
                'category_name' => 'required'		         
		   		 );
	    
	   	 $validator = \Validator::make($data,$rule);
 
        if ($validator->fails())
        {
                return redirect()->back()->withErrors($validator->messages());
        } 
	    $inputs = $request->all();
		
		if(!empty($inputs['id'])){
           
            $subcat_obj = Categories::findOrFail($inputs['id']);

        }else{

            $subcat_obj = new Categories;
			
			$LastId = Categories::orderBy('id','DESC')->limit(1)->get()[0];
			$subcat_obj->cat_id = $LastId->id + 1;

        }
		
		
		if($inputs['category_slug']=="")
		{
			$sub_category_slug = str_slug($inputs['category_name'], "-");
		}
		else
		{
			$sub_category_slug =str_slug($inputs['category_slug'], "-"); 
		}
		
		$subcat_obj->cat_parent = $inputs['category']; 
		$subcat_obj->category_name = $inputs['category_name']; 
		$subcat_obj->category_slug = $sub_category_slug;
		$image = $request->file('image');
		if($image)
                    {
                  \File::delete(public_path() .'/site_assets/banner/'.$subcat_obj->image.'-b.jpg');
                  \File::delete(public_path() .'/site_assets/banner/'.$subcat_obj->image.'-s.jpg');
                  $tmpFilePath = 'site_assets/banner/';          
                  $hardPath = substr($sub_category_slug,0,100).'_'.time();
                  $img = Image::make($image);
                  $img->save($tmpFilePath.$hardPath.'-b.jpg');
                  $img->fit(283, 178)->save($tmpFilePath.$hardPath. '-s.jpg');
                  $subcat_obj->image = $hardPath. '-s.jpg';
                  }
		
		 
	    $subcat_obj->save();
		
		if(!empty($inputs['id'])){

            \Session::flash('flash_message', 'Changes Saved');

            return \Redirect::back();
        }else{

            \Session::flash('flash_message', 'Added');

            return \Redirect::back();

        }		     
        
         
    }     
    
    public function editSubCategory($id)    
    {     
    
    	  if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }
          
		$categories = Categories::where('cat_parent',0)->orderBy('category_name','ASC')->get();
		$subcat = Categories::where('id',$id)->orderBy('category_name')->get()[0]; 
		//echo "<pre>";print_r($subcat);die();
          //$subcat = Categories::findOrFail($id);
           
          return view('admin.pages.addeditSubCategory',compact('categories','subcat'));
        
    }	 
    
    public function delete($id)
    {
    	if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }
        	
        $sub_cat = Categories::findOrFail($id);
        $sub_cat->delete();

        \Session::flash('flash_message', 'Deleted');

        return redirect()->back();

    }
     
    	
}
