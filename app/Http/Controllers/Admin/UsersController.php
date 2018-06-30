<?php

namespace App\Http\Controllers\Admin;

use Auth;
use App\User;
use App\Payments;
use App\Cupowallet;
use App\RecomCoupons;
use App\Listings;
use App\Customcoupons;
use App\UserWallet;
use App\Newsletter;
use App\Contactus;
use Carbon\Carbon;
use App\Http\Requests;
use Illuminate\Http\Request;
use Session;
use Intervention\Image\Facades\Image; 
use Illuminate\Support\Facades\DB;

class UsersController extends MainAdminController
{
	public function __construct()
    {
		 $this->middleware('auth');	
		
		 parent::__construct();
         
    }
	public function email_template($array){
		return view('includes.email_template',compact('array'));
	}
    public function userslist()    { 
         
        if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        } 
          
        $allusers = User::where('usertype', '!=', 'Admin')->orderBy('id')->get();
       
         
        return view('admin.pages.users',compact('allusers'));
    } 
     
    public function addeditUser()    { 
        
        if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }
          
        return view('admin.pages.addeditUser');
    }
   
    public function addnew(Request $request)
    { 
    	
    	$data =  \Input::except(array('_token')) ;
	    
	    $inputs = $request->all();
	    
	    if(!empty($inputs['id']))
	    {
			$rule=array(
		        'first_name' => 'required',
                'last_name' => 'required',
		        'email' => 'required|email|max:200',
                'image_icon' => 'mimes:jpg,jpeg,gif,png' 		        	        
		   		 );
			
		}
		else
		{
			$rule=array(
		        'first_name' => 'required',
                'last_name' => 'required',
		        'email' => 'required|email|max:75|unique:users',
		        'password' => 'required|min:3|max:50',
                'image_icon' => 'mimes:jpg,jpeg,gif,png' 		        
		   		 );
		}
	    
	    
	    
	   	 $validator = \Validator::make($data,$rule);
 
        if ($validator->fails())
        {
                return redirect()->back()->withErrors($validator->messages());
        } 
	      
		if(!empty($inputs['id'])){
           
            $user = User::findOrFail($inputs['id']);

        }else{

            $user = new User;

        }
		
		//User image
        $user_image = $request->file('image_icon');
         
        if($user_image){
            
           // \File::delete(public_path() .'/upload/members/'.$user->image_icon.'-b.jpg');
           // \File::delete(public_path() .'/upload/members/'.$user->image_icon.'-s.jpg');
            
            $tmpFilePath = 'upload/members/';

            $hardPath =  str_slug($inputs['first_name'], '-').'-'.md5(time());
            
            $img = Image::make($user_image);

            $img->fit(250, 250)->save($tmpFilePath.$hardPath.'-b.jpg');
            //$img->fit(80, 80)->save($tmpFilePath.$hardPath. '-s.jpg');

            $user->image_icon = $tmpFilePath.$hardPath.'-b.jpg';
             
        } 
		
		$user->usertype = 'User';
		$user->first_name = $inputs['first_name']; 
        $user->last_name = $inputs['last_name'];       
        $user->email = $inputs['email'];
        $user->mobile = $inputs['mobile'];
        $user->contact_email = $inputs['contact_email'];
        $user->website = $inputs['website'];           
        $user->address = $inputs['address']; 
//        $user->facebook_url = $inputs['facebook_url'];
//        $user->twitter_url = $inputs['twitter_url'];
//        $user->linkedin_url = $inputs['linkedin_url'];
//        $user->dribbble_url = $inputs['dribbble_url'];
//        $user->instagram_url = $inputs['instagram_url'];       		 
		
		if($inputs['password'])
		{
			$user->password= bcrypt($inputs['password']); 
		}
		
		
		 
	    $user->save();
		
		if(!empty($inputs['id'])){

            \Session::flash('flash_message', 'Changes Saved');

            return \Redirect::back();
        }else{

            \Session::flash('flash_message', 'Added');

            return \Redirect::back();

        }		     
        
         
    }     
    
    
    public function editUser($id)    
    {     
    	  if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }		
    		     
          $user = User::findOrFail($id);
           
          return view('admin.pages.addeditUser',compact('user'));
        
    }
    
    public function view_userdetail($id)    
    {     
        if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }		
    		     
        $user = User::findOrFail($id);
          
        $bank_info=Payments::where('user_id',$id)->where('payment_type','bank_info')->get();
        $paytm_info=Payments::where('user_id',$id)->where('payment_type','paytm_info')->get();
        $mobikwik_info=Payments::where('user_id',$id)->where('payment_type','mobikwik_info')->get();
        $freecharge_info=Payments::where('user_id',$id)->where('payment_type','freecharge_info')->get();
        $cuponcount= Cupowallet::where('UserId',$id)->count();
        
        $cuponsaved= DB::table('listings')
		   ->leftJoin('cupowallet', 'listings.id', '=', 'cupowallet.ListingId')
		   ->select('listings.*','cupowallet.date')->where(array('cupowallet.UserId'=>$id))
		   ->get();
        $cuponused= DB::table('listings')
		   ->leftJoin('user_activity', 'listings.id', '=', 'user_activity.dataValue')
		   ->select('listings.*','user_activity.dataValue')->where(array('user_activity.UserId'=>$id))->groupBy('user_activity.dataValue')
		   ->get();
        
           /*e-wallet*/
            $walletData = UserWallet::where(array('pay_userid'=>$id))->get();
            $walletLastAmt = UserWallet::where(array('pay_userid'=>$id))->sum('credit') - UserWallet::where(array('pay_userid'=>$id))->sum('debit');
            $wallet_Suc = UserWallet::where(array('pay_userid'=>$id,'pay_plan'=>"Cashback",'pay_drcr'=>'Cr','pay_status'=>'Success'))->sum('credit');
            $wallet_Pen = UserWallet::where(array('pay_userid'=>$id,'pay_plan'=>"Cashback",'pay_drcr'=>'Cr','pay_status'=>'Pending'))->sum('credit');
            $wallet_Fail = UserWallet::where(array('pay_userid'=>$id,'pay_plan'=>"Cashback",'pay_drcr'=>'Cr','pay_status'=>'Failure'))->sum('credit');
            /*e-wallet*/
        
        $customcoupon= Customcoupons::where('user_id',$id)->get();
        
        $cuponused_info=count($cuponused);
         if($cuponused_info==0){ $cuponused='u'; }
         
        $custm_info=count($customcoupon);
         if($custm_info==0){ $customcoupon='n'; }
         
        if($cuponcount==0){ $cuponsaved='m'; }
        
        $b_info=count($bank_info);
        if($b_info==0){ $bank_info=1; }
         $p_info=count($paytm_info);
        if($p_info==0){ $paytm_info=1; }
         $m_info=count($mobikwik_info);
        if($m_info==0){ $mobikwik_info=1; }
         $f_info=count($freecharge_info);
        if($f_info==0){ $freecharge_info=1; }
          return view('admin.pages.view_users',compact('user','id','freecharge_info','mobikwik_info','paytm_info','bank_info','cuponsaved','cuponcount','customcoupon','cuponused','walletData','wallet_Suc','wallet_Pen','wallet_Fail','walletLastAmt'));
        
    }
     
    public function delete($id)
    {
    	
    	if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }
    		
        $user = User::findOrFail($id);
        
		\File::delete(public_path() .'/upload/members/'.$user->image_icon.'-b.jpg');
		\File::delete(public_path() .'/upload/members/'.$user->image_icon.'-s.jpg');
			
		$user->delete();
		
        \Session::flash('flash_message', 'Deleted');

        return redirect()->back();

    }
    
     public function addnewsubadmin(Request $request)
    { 
    	
    	$data =  \Input::except(array('_token')) ;
	    
	    $inputs = $request->all();
	    
	    if(!empty($inputs['id']))
	    {
			$rule=array(
		        'first_name' => 'required',
                'last_name' => 'required',
		        'email' => 'required|email|max:200',
                'image_icon' => 'mimes:jpg,jpeg,gif,png' 		        	        
		   		 );
			
		}
		else
		{
			$rule=array(
		        'first_name' => 'required',
                'last_name' => 'required',
		        'email' => 'required|email|max:75|unique:users',
		        'password' => 'required|min:3|max:50',
                'image_icon' => 'mimes:jpg,jpeg,gif,png' 		        
		   		 );
		}
	 $validator = \Validator::make($data,$rule);
        if ($validator->fails())
        {
                return redirect()->back()->withErrors($validator->messages());
        } 
	      
		if(!empty($inputs['id'])){
           
            $user = User::findOrFail($inputs['id']);

        }else{

            $user = new User;

        }
		//User image
        $user_image = $request->file('image_icon');
         
        if($user_image){
            
           // \File::delete(public_path() .'/upload/members/'.$user->image_icon.'-b.jpg');
           // \File::delete(public_path() .'/upload/members/'.$user->image_icon.'-s.jpg');
            
            $tmpFilePath = 'upload/members/';

            $hardPath =  str_slug($inputs['first_name'], '-').'-'.md5(time());
            
            $img = Image::make($user_image);

            $img->fit(250, 250)->save($tmpFilePath.$hardPath.'-b.jpg');
            //$img->fit(80, 80)->save($tmpFilePath.$hardPath. '-s.jpg');

            $user->image_icon = $tmpFilePath.$hardPath.'-b.jpg';
             
        } 
		$user->usertype = 'Admin';
                $user->userrole = 'subadmin';
		$user->first_name = $inputs['first_name']; 
                $user->last_name = $inputs['last_name'];       
                $user->email = $inputs['email'];
                $user->mobile = $inputs['mobile'];
                $user->address = $inputs['address']; 
                if(!empty($inputs['categories']))
                {
                $user->categories= $inputs['categories'];
                }else {
                   $user->categories='off'; 
                }
                if(!empty($inputs['subcategories']))
                {
                $user->subcategories= $inputs['subcategories'];
                }else{
                    $user->subcategories='off'; 
                }
                 if(!empty($inputs['pages']))
                {
                $user->pages= $inputs['pages'];
                }else {
                    $user->pages='off';
                }
                if(!empty($inputs['blog']))
                {
                $user->blog= $inputs['blog'];
                }else {
                   $user->blog='off'; 
                }
                if(!empty($inputs['slider']))
                {
                $user->slider= $inputs['slider'];
                }else {
                    $user->slider='off';
                }
                if(!empty($inputs['advertisement']))
                {
                $user->advertisement= $inputs['advertisement'];
                }else {
                      $user->advertisement='off';
                }
                if(!empty($inputs['listings']))
                {
                $user->listings= $inputs['listings'];
                }else {
                    $user->listings='off';
                }
                if(!empty($inputs['users']))
                {
                $user->users= $inputs['users'];
                }else {
                         $user->users='off';
                }
                if(!empty($inputs['settings']))
                {
                $user->settings= $inputs['settings'];
                }else {
                    $user->settings='off'; 
                }
                if(!empty($inputs['subadmins']))
                {
                $user->subadmins= $inputs['subadmins'];
                }else {
                    $user->subadmins='off'; 
                }
                 if(!empty($inputs['subscribers']))
                {
                $user->subscribers= $inputs['subscribers'];
                }else {
                    $user->subscribers='off'; 
                }
                if(!empty($inputs['contacts_mangement']))
                {
                $user->contacts= $inputs['contacts_mangement'];
                }else {
                    $user->contacts='off'; 
                }
                 if(!empty($inputs['retailers']))
                {
                $user->retailers= $inputs['retailers'];
                }else {
                    $user->retailers='off'; 
                }
               
		if($inputs['password'])
		{
			$user->password= bcrypt($inputs['password']); 
		}
		
		 
	    $user->save();
		
		if(!empty($inputs['id'])){

            \Session::flash('flash_message', 'Changes Saved');

            return \Redirect::back();
        }else{

            \Session::flash('flash_message', 'Added');

            return \Redirect::back();

        }		     
        
         
    }  
     public function editsubadminUser($id)    
    {     
    	  if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }		
    		     
          $user = User::findOrFail($id);
           
          return view('admin.pages.addeditsubadminUser',compact('user'));
        
    }
     public function subscriber_email(Request $request)
	  {
		$URI = 'cashbanzo.sellyt.com';
		$emailt = 'info@cashbanzo.sellyt.com';
		 $to=implode(',',$request['to']); 
		$headers = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		$headers .= 'From: '.$URI.' <' . $emailt. ">\r\n"; // Sender's Email
		$subject =$request['subject'];
		$array =$request['message'];
		
		$mailmessage = $this->email_template($array); 
		$msg = wordwrap($mailmessage,500);
		// send email
		 mail($to,$subject,$msg,$headers);
 
			\Session::flash('flash_message', 'Email has sent!');
			return redirect('admin/subscribers');
		 
	  }
      public function subscriber_delete($id)
    {
    	
    	if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }
    		
        $user = Newsletter::findOrFail($id);
	$user->delete();
        \Session::flash('flash_message', 'Deleted');
        return redirect()->back();

    }
        public function contacts_delete($id)
    {
    	if(Auth::User()->usertype!="Admin"){
            \Session::flash('flash_message', 'Access denied!');
            return redirect('admin/dashboard');
        }
        $user = Contactus::findOrFail($id);
	$user->delete();
        \Session::flash('flash_message', 'Deleted');
        return redirect()->back();
    }
    
	/* recommended coupons*/
	public function recommend_list()    
    {     
    	  if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }	$listid=array();
			$cupowallet= RecomCoupons::orderBy('created_at', 'desc')->get();
			foreach($cupowallet as $listingid){
				$listid[] =$listingid->ListingId;
			}
			$cupowallet = Listings::whereIn('id',$listid)->get();
			//$user = RecomCoupons::findOrFail($id);
           
          return view('admin.pages.recommend_list',compact('cupowallet'));
        
    }
	public function recommend_add()    
    {     
    	  if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }	
			$user = User::where('usertype','User')->orderBy('first_name')->get();
			$listings = Listings::orderBy('title')->get();
			//$user = RecomCoupons::findOrFail($id);
           
          return view('admin.pages.addrecommend',compact('listings','user'));
        
    }
	 public function recommend_addpost(Request $request)
    { 
    	
    	$data =  \Input::except(array('_token')) ;
	    
	    $inputs = $request->all();
	 
			$rule=array(
		        'coupons' => 'required',
                'users' => 'required' 		        
		   		 ); 
	    
	   	 $validator = \Validator::make($data,$rule);
 
        if ($validator->fails())
        {
                return redirect()->back()->withErrors($validator->messages());
        } 
	      //echo "<pre>";print_r($inputs);echo "</pre>";die();
		 foreach($inputs['users'] as $users){
			$user = new RecomCoupons;
			$user->date = 'User';
			$user->UserId = $users; 
			$user->ListingId = $inputs['coupons'];       
			$user->type = 'Recommended';
			$user->save();
		 }
		
            \Session::flash('flash_message', 'Added');

            return redirect('admin/recommended-coupons/list');
    }
	
	public function recommend_delete($id)
    {
    	//die($id);
    	if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }
    		
         RecomCoupons::where('ListingId',$id)->delete();
 
		
        \Session::flash('flash_message', 'Deleted');

        return redirect()->back();

    }
}
