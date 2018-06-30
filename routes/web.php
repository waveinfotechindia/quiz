<?php

Route::group(['namespace' => 'Admin', 'prefix' => 'admin'], function () {
	
	Route::get('/', 'IndexController@index');
	Route::post('login', 'IndexController@postLogin');
	Route::get('logout', 'IndexController@logout');
	Route::get('dashboard', 'DashboardController@index');
	Route::get('profile', 'AdminController@profile');	
	Route::post('profile', 'AdminController@updateProfile');	
	Route::post('profile_pass', 'AdminController@updatePassword');

	Route::get('settings', 'SettingsController@settings');	
	Route::post('settings', 'SettingsController@settingsUpdates');	
	Route::post('contactus_settings', 'SettingsController@contactus_settings');
	
        Route::post('addthisdisqus', 'SettingsController@addthisdisqus');	
	Route::post('headfootupdate', 'SettingsController@headfootupdate');
	  
	Route::get('users', 'UsersController@userslist');	
	Route::get('users/adduser', 'UsersController@addeditUser');	
	Route::post('users/adduser', 'UsersController@addnew');	
	Route::get('users/adduser/{id}', 'UsersController@editUser');	
	
	Route::get('users/delete/{id}', 'UsersController@delete');	
        
	Route::get('/subadmins',function(){return view('admin.pages.subadmins'); }); 
	Route::get('subadmins/addsubadmins',function(){return view('admin.pages.addeditsubadminUser'); }); 
        Route::post('users/addsubadminuser', 'UsersController@addnewsubadmin');
        Route::get('subadmins/addsubadminuser/{id}', 'UsersController@editsubadminUser');	
        
 	Route::get('categories', 'CategoriesController@categories');	
	Route::get('categories/addcategory', 'CategoriesController@addeditCategory'); 
	Route::get('categories/addcategory/{id}', 'CategoriesController@editCategory');	
	Route::post('categories/addcategory', 'CategoriesController@addnew');	
	Route::get('categories/delete/{id}', 'CategoriesController@delete');

	Route::get('subcategories', 'SubCategoriesController@subcategories');	
	Route::get('subcategories/addsubcategory', 'SubCategoriesController@addeditSubCategory'); 
	Route::get('subcategories/addsubcategory/{id}', 'SubCategoriesController@editSubCategory');	
	Route::post('subcategories/addsubcategory', 'SubCategoriesController@addnew');	
	Route::get('subcategories/delete/{id}', 'SubCategoriesController@delete');
	Route::get('subcategories/featured_listing/{id}/{status}', 'SubCategoriesController@subcate_featured_listing');
	Route::get('ajax_subcategories/{id}', 'SubCategoriesController@ajax_subcategories');

        
	 Route::post('/subscribers', 'UsersController@subscriber_email');
	 Route::get('/subscribers',function(){return view('admin.pages.subscriber'); });
         Route::get('subscribers/delete/{id}', 'UsersController@subscriber_delete');
         
        Route::get('/contacts_mangement',function(){return view('admin.pages.contactus_mangement'); });
        Route::get('contacts/delete/{id}', 'UsersController@contacts_delete');
        

        
        Route::get('slider_manage', 'ListingsAdminController@slider_manage');
        Route::post('submit_slide', 'ListingsAdminController@addnewslide');
        Route::get('submit_slide/{id}', 'ListingsAdminController@editslider');
        Route::get('slider/delete/{id}', 'ListingsAdminController@slider_delete');
       
        Route::get('/slider_management',function(){return view('admin.pages.slider'); }); 
     
   
        
       // show new post form
	Route::get('new-post','PostController@create');
	// save new post
	Route::post('new-post','PostController@store');
       // show posts 
        Route::get('blog','PostController@blog');
	// edit post form
	Route::get('edit/{slug}','PostController@edit');
	// update post
	Route::post('update','PostController@update');
        // delete post
	Route::get('delete/{id}','PostController@destroy');
	
	// show new pages form
	Route::get('new-page','PagesController@create');
	// save new pages
	Route::post('new-page','PagesController@addpost');
       // show pages 
        Route::get('pages','PagesController@pages_list');
	// edit pages form
	Route::get('edit-page/{slug}','PagesController@edit');
	// update pages
	Route::post('update-page','PagesController@update');
        // delete pages
	Route::get('delete-page/{id}','PagesController@destroy');
	
	
	 
});

Route::get('/', 'IndexController@index');
Route::get('payment-status',array('as'=>'payment.status','uses'=>'PaymentController@paymentInfo'));
Route::get('payment',array('as'=>'payment','uses'=>'PaymentController@payment'));
Route::get('payment-cancel', function () {
    return 'Payment has been canceled';
});

Route::post('/send_mail_refer_friend', 'IndexController@send_mail_refer_friend');
//Social Login
Route::get('social/login/{provider}', 'Auth\AuthController@redirectToProvider');
Route::get('social/login/callback/{provider}', 'Auth\AuthController@handleProviderCallback');



Route::get('login', 'IndexController@login');
Route::post('login', 'IndexController@postLogin');
Route::get('login_retailer', 'IndexController@login_retailer');
Route::post('login_retailer', 'IndexController@postLoginRetailer');
Route::post('postcheckoutlogin', 'IndexController@postcheckoutlogin');
Route::get('register', 'IndexController@register');
Route::post('register', 'IndexController@postRegister');   
Route::get('/confirm/{confirm}', 'IndexController@confirmRegister');


Route::get('/pages/{slug}', 'IndexController@pages_list'); 
Route::get('about', 'IndexController@about_us');
Route::get('privacy-policy', 'IndexController@privacypolicy');
Route::get('spam-policy', 'IndexController@spampolicy'); 
Route::get('why-pennicart', 'IndexController@whypennicart');
Route::get('how-it-work', 'IndexController@how_it_work');
Route::get('cashback-terms', 'IndexController@cashback_terms');
Route::get('coupon-terms', 'IndexController@coupon_terms');
Route::get('missing-cashback', 'IndexController@missing_cashback');
Route::get('sitmap', 'IndexController@sitmap');
Route::get('/faq', 'IndexController@faq_page');
Route::get('blog','IndexController@blog');

Route::get('contact', 'IndexController@contact_us');
Route::get('our-partner', 'IndexController@our_partner');
Route::get('incentive-terms', 'IndexController@incentive_terms');
Route::get('dashboard/refer-friend','IndexController@refer_friend');



/*front end rooting*/
Route::post('submit-newsletter', 'IndexController@submit_newsletter');
Route::get('ppassword/email', 'Auth\PasswordController@getEmail');
Route::post('password/email', 'IndexController@forgetEmail');
Route::post('password/reset', 'Auth\PasswordController@postReset');
Route::get('password/reset/{token}', 'Auth\PasswordController@getReset');
Route::get('/rating', 'IndexController@rating');
Route::get('ajax_subcategories/{id}', 'ListingsUserController@ajax_subcategories');
Route::get('ajax/watchlist', 'IndexController@watchlist');
Route::get('/ajax/get-stores/', 'IndexController@get_stores');


/* user dashboard rooting*/ 
Route::get('dashboard', 'IndexController@dashboard');
Route::get('usertype', 'IndexController@usertype');
Route::post('user_type', 'IndexController@user_type');
Route::get('dashboard/account-settings', 'IndexController@account_settings');

Route::post('dashboard/update-info', 'IndexController@editprofile');

Route::get('dashboard/change_pass', 'IndexController@change_password');
Route::post('change_pass', 'IndexController@edit_password');
Route::get('logout', 'IndexController@logout');	
 

Route::post('/payment', ['as' => 'payment', 'uses' => 'PaymentController@checkout']);
Route::get('/payment/status', ['as' => 'payment_status', 'uses' => 'PaymentController@status']);


 

