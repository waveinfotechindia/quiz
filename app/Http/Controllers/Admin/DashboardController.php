<?php

namespace App\Http\Controllers\Admin;

use Auth;
use App\User;
use App\Categories;
use App\SubCategories;

 
use App\Http\Requests;
use Illuminate\Http\Request;


class DashboardController extends MainAdminController
{
	public function __construct()
    {
		 $this->middleware('auth');	
         
    }
    public function index()
    { 
    	 if(Auth::user()->usertype=='Admin')	
          {  
        		$categories = Categories::count(); 
        		$subcategories = SubCategories::count(); 
        	 
        	 	$users = User::where('usertype', 'User')->count();
           

            return view('admin.pages.dashboard',compact('categories','subcategories','users'));

	      }else{
			  return redirect('/');
		  }
   
    	
        
    }
	
	 
    	
}
