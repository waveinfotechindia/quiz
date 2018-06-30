<?php

namespace App\Http\Controllers;

use Auth;
use App\Pages;
use App\User;

use App\Contactus;
use Illuminate\Http\Request;
use App\Http\Requests;
use Session;
use Mail;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Intervention\Image\Facades\Image; 

class IndexController extends Controller
{
	public function email_template($array,$unsubscribe=false){
		return view('includes.email_template',compact('array','unsubscribe'));
	}
	
	public function forgetEmail(Request $request)
          {
          
  $getdata =   DB::table('users')->where('email',$_REQUEST['email'])->get();
  if($getdata){ 

 $chars = "abcdefghijklmnopqrstuvwxyz123456\/_";
   $password = substr( str_shuffle( $chars ), 0, 8 );
  $newpassword =   bcrypt($password); 
  
  DB::table('users')
            ->where('email',$_REQUEST['email'])
            ->update(array('password' => $newpassword));
           
            
  $data = array(
            'newpassword' => $password,
             'email' => $_REQUEST['email']
             );
            
        $URI = URL('/');
        $inputs['name']='User';
        $emailt = getcong("site_email");
		$to=$_REQUEST['email']; 
		$headers = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		$headers .= 'From: '.$URI.' <' . $emailt. ">\r\n"; // Sender's Email
		$array ="<h3>Dear ".$inputs['name'].",</h3>
				<strong>Your New Password is: " . $password . "</strong>";
				
		
		$mailmessage = $this->email_template($array); 
		$msg = wordwrap($mailmessage,500);
		// send email
		$ms='Your New Password';
		mail($_REQUEST['email'],$ms,$msg,$headers);
		 /* mail template */
		 
		 
   \Session::flash('flash_message', 'Email is sent to you with new password');
   return redirect()->back();
  
  
  }else{
  \Session::flash('flash_message', 'User not found');
   return redirect()->back();
  }
  
          } 
	
    public function index()
    {  

		//echo "<pre>";print_r($popular_listings);die();
        return view('pages.index');
    }
     public function checkoutlogin()
    { 
       if(Auth::check())
       { 
            return redirect('/dashboard');
       }
       else
       {
           return view('pages.checkoutlogin');
       }

        
    }
    
   
    public function refer_friend()
    {        if(!Auth::check())
       {

            \Session::flash('flash_message', 'Access denied!');

            return redirect('login');
            
        }  
        return view('footerpages.refer');
    }
    public function postcheckoutlogin(Request $request)
    {
        
    
		$inputs = $request->all();
      $this->validate($request, [
            'email' => 'required|email', 'password' => 'required',
        ]);
        $credentials = $request->only('email', 'password');
         if (Auth::attempt($credentials, $request->has('remember'))) {
            if(Auth::user()->usertype!='User'){
                \Auth::logout();
                return redirect('/checkoutlogin')->withErrors('The specified username does not exist in our system!');
            }elseif(Auth::user()->status!='Active'){
                \Auth::logout();
                return redirect('/checkoutlogin')->withErrors('Your Account has not been Actived!');
            }
			$this->handleUserWasAuthenticated($request);
			if(isset($inputs['url']) && $inputs['url']!=""){
				//echo "true";
				return  redirect($inputs['url']);
				die();
			}else{
				return  redirect('/checkout');
			}
        }


       return redirect('/checkoutlogin')->withErrors('The email or the password is invalid. Please try again.');
        
    }
  
    public function pages_list($slug)
    { 
    	
		$data = Pages::where(array('slug'=>$slug,'active'=>1))->limit(1)->get()[0];
		
		//echo "<pre>";print_r($data);die();
        return view('pages.pages',compact('data'));
    }
    
     public function about_us()
    { 
                  
        return view('footerpages.about');
    }
	public function how_it_work()
    { 
                  
        return view('footerpages.how_it_work');
    }

	public function faq_page()
    { 
                  
        return view('footerpages.faq');
    }

	

	
	public function sitmap()
    { 
                  
        return view('footerpages.sitmap');
    }
	public function blog()
	{
		return view('footerpages.blog');
		
	}
	
	
	
	
    public function contact_us()
    {        
        return view('footerpages.contact');
    }
	public function our_partner()
    {        
        return view('footerpages.our_partner');
    }
	public function incentive_terms()
    {        
        return view('footerpages.incentive_terms');
    }

    public function termsandconditions()
    { 
                  
        return view('pages.termsandconditions');
    }

    public function privacypolicy()
    { 
                  
        return view('footerpages.privacypolicy');
    }
	
	 public function spampolicy() 
    { 
                  
        return view('footerpages.spampolicy');
    } 
	public function whypennicart() 
    { 
                  
        return view('footerpages.whypennicart');
    } 
	
    public function help()
    { 
                  
        return view('pages.help');
    }
     public function cookies_policy()
    { 
                  
        return view('pages.cookies_policy');
    }
    
    /**
     * If application is already installed.
     *
     * @return bool
     */
    public function alreadyInstalled()
    {
        return file_exists(storage_path('installed'));
    }

    /**
     * Do user login
     * @return $this|\Illuminate\Http\RedirectResponse
     */
     
     public function login()
    { 
	
       if(Auth::check())
       { 
            return redirect('/dashboard');
       }
       else
       {
            return view('pages.login');
       }

        
    }

    public function postLogin(Request $request)
    {
        
    
		$inputs = $request->all();
      $this->validate($request, [
            'email' => 'required|email', 'password' => 'required',
        ]);
        $credentials = $request->only('email', 'password');
         if (Auth::attempt($credentials, $request->has('remember'))) {
         $country =   Auth::user()->country; 
            if(Auth::user()->usertype=='User' || Auth::user()->usertype=='Retailer'){
            
                \Auth::logout();
                return redirect('/login')->withErrors('The specified username does not exist in our system!');
            }elseif(Auth::user()->status!='Active'){
                \Auth::logout();
                return redirect('/login')->withErrors('Your Account has not been Actived!');
            }
			$this->handleUserWasAuthenticated($request);
			if(isset($inputs['url']) && $inputs['url']!=""){
				//echo "true";
				return  redirect($inputs['url']);
				die();
			}else{
			
			}
        }


       return redirect('/login')->withErrors('The email or the password is invalid. Please try again.');
        
    }
    
     /**
     * Send the response after the user was authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  bool  $throttles
     * @return \Illuminate\Http\Response
     */
    protected function handleUserWasAuthenticated(Request $request)
    {
        if (method_exists($this, 'authenticated')) {
            return $this->authenticated($request, Auth::user());
        }

        return redirect('/dashboard'); 
    }
    
 
  
    
     public function forgot_password()
    { 
       
            return view('pages.forgot_password');
        
    }

    
    /**
     * Log the user out of the application.
     *
     * @return \Illuminate\Http\Response
     */
    public function logout()
    {
        Auth::logout();

        \Session::flash('flash_message', 'Logout successfully...');

        return redirect('/');
    }


    public function register()
    { 
        $captcha = rand(1234,9999);
       Session::put('captcha',$captcha);
        return view('pages.register',compact('captcha'));
    }
	public function confirmRegister($confirm)
    { 
		$count = User::where(array('ucode'=>$confirm,'status'=>'Pending'))->count();
		//print_r($count);die('die');
		if($count<1){
			\Session::flash('flash_message', '');
			return redirect('/login')->withErrors('Your Email has been already confirmed!');
		}else{
			DB::table('users')->where('ucode' , $confirm)->update(['status' => 'Active']);
			\Session::flash('flash_message', 'Your Email has been confirmed.');
			return redirect('/login');
		}
	} 
    public function postRegister(Request $request)
    { 
        
        $data =  \Input::except(array('_token')) ;
        
        $inputs = $request->all();
        
        $rule=array(
                'first_name' => 'required',
                'last_name' => 'required',
                'email' => 'required|email|max:75|unique:users',
                'password' => 'required|min:3|confirmed',
                'country' => 'required',
                'usertype' => 'required'
                 );
        
        
        
         $validator = \Validator::make($data,$rule);
 
        if ($validator->fails())
        {
                return redirect()->back()->withErrors($validator->messages());
        } 
          
       $captcha =  Session::get('captcha');
 
        if ($captcha<>$inputs['captcha'])
        {
                return redirect()->back()->withErrors("Invalid Captcha!");
        } 
          
    
       
            $user = new User;
        $user->usertype = 'User';
        $user->first_name = $inputs['first_name']; 
        $user->last_name = $inputs['last_name'];       
        $user->email = $inputs['email'];  
        $user->country = $inputs['country'];        
        $user->password= bcrypt($inputs['password']); 
        
        $user->ucode=$ucode=rand().md5(time());
		$user->status ="Pending";
        $user->save();
        
		$credentials = $request->only('email', 'password');

         
        
        
	
         
    }    

           

    public function change_password()
    { 
          if(!Auth::check())
       {

            \Session::flash('flash_message', 'Access denied!');

            return redirect('login');
            
        }
        
        return view('pages.change_password');
    }

        
     public function edit_password(Request $request)
    { 
        
        $data =  \Input::except(array('_token')) ;
        
        $inputs = $request->all();
        
        $rule=array(                
                'password' => 'required|min:3|confirmed'
                 );
        
        
        
         $validator = \Validator::make($data,$rule);
 
        if ($validator->fails())
        {
                return redirect()->back()->withErrors($validator->messages());
        } 
          
       
        $user_id=Auth::user()->id;
           
        $user = User::findOrFail($user_id);
       
        $user->password= bcrypt($inputs['password']);  
        
         
        $user->save(); 

            \Session::flash('flash_message', 'Password has been changed...');

            return \Redirect::back();

         
    } 


    public function contact_send(Request $request)
    { 
        
        $data =  \Input::except(array('_token')) ;
        
        $inputs = $request->all();
        
        $rule=array(                
                'name' => 'required',
                'email' => 'required|email|max:75'
                 );
        
        
        
         $validator = \Validator::make($data,$rule);
 
        if ($validator->fails())
        {
                return redirect()->back()->withErrors($validator->messages());
        } 
          
            $data = array(
            'name' => $inputs['name'],
            'email' => $inputs['email'],           
            'subject' => $inputs['subject'],
            'user_message' => $inputs['message'],
             );

            $subject=$inputs['subject'];
            $Contactus=new Contactus;
            $Contactus->subject=$inputs['subject'];
            $Contactus->message=$inputs['message'];        
            $Contactus->email=$inputs['email'];
            $Contactus->name=$inputs['name'];
            $Contactus->save();
                    
            \Mail::send('emails.contact', $data, function ($message) use ($subject){

                $message->from(getcong('site_email'), getcong('site_name'));

                $message->to(getcong('site_email'))->subject($subject);

            });
        

            \Session::flash('flash_message', 'Thank You. Your Message has been Submitted.');

            return \Redirect::back();

         
    }

	public function customer_support(){
        if(!Auth::check())
		{
            \Session::flash('flash_message', 'Access denied!');
            return redirect('login');
        }
		$support = Support::orderBy('id','DESC')->where('UserId',Auth::user()->id)->get();
		return view('pages.support',compact('support'));
    }
	public function submit_support(Request $request){
        if(!Auth::check())
		{
            \Session::flash('flash_message', 'Access denied!');
            return redirect('login');
        }
		$data =  \Input::except(array('_token')) ;
        $inputs = $request->all();        
            $rule=array(
                'type' => 'required',
                'message' => 'required'
                 );
         $validator = \Validator::make($data,$rule);
        if ($validator->fails())
        {
			return redirect()->back()->withErrors($validator->messages());
        }
		$user_id=Auth::user()->id;
        $support=new Support;
        $support->UserId=$user_id;
        $support->type=$inputs['type'];
        $support->token_no=$user_id.rand();
        $support->message=$inputs['message'];
        $support->save();
		\Session::flash('flash_message', 'Your inquiry has been submitted.');
        return \Redirect::back();
    }
	

	public function dashboard()
        {
            if(!Auth::check())
            {       
            return redirect('/');
            }
            
            
            
            $usertype = User::where('id',Auth::user()->id)->pluck('usertype');
            if(empty($usertype[0]))
            {
                return redirect('/usertype');
            }
            else
            {
                $user_id=Auth::user()->id;
			
            $UserData = User::where('id',$user_id)->get();
		
             return view('pages.dashboard',compact('UserData'));
            }
            
		 
	}
        
        public function usertype()
        {
            $name = Auth::user()->first_name;
            return view('pages.user_type',compact('name'));
        }
        
        
        public function user_type(Request $request)
        {
            User::where('id',Auth::user()->id)->update(['usertype'=>$request->usertype]);
            
            return redirect('/dashboard');
        }


    public function editprofile(Request $request)
    { 
        
        $data =  \Input::except(array('_token')) ;
        
        $inputs = $request->all();
        
        
            $rule=array(
                'email' => 'required|email|max:200',
                'mobile' => 'required|numeric|min:10'
                 );
       
        
         $validator = \Validator::make($data,$rule);
 
        if ($validator->fails())
        {
                return redirect()->back()->withErrors($validator->messages());
        } 
          
        $user_id=Auth::user()->id;
           
        $user = User::findOrFail($user_id);
        

        $icon = $request->file('user_icon');
         
        if($icon){


            $tmpFilePath = 'upload/members/';

            $hardPath =  str_slug($inputs['first_name'], '-').'-'.md5(time());

            $img = Image::make($icon);

            $img->fit(250, 250)->save($tmpFilePath.$hardPath.'-b.jpg');
            //$img->fit(80, 80)->save($tmpFilePath.$hardPath. '-s.jpg');

            $user->image_icon = $tmpFilePath.$hardPath.'-b.jpg';
        }
         
        
        $user->first_name = $inputs['first_name']; 
        $user->last_name = $inputs['last_name'];       
        //$user->email = $inputs['email'];
        $user->mobile = $inputs['mobile'];
        $user->state = $inputs['state'];
        $user->city = $inputs['city'];        
        $user->address = $inputs['address'];
		if(isset($inputs['gender']))
        $user->gender = $inputs['gender'];
        $user->dob = $inputs['birth'];
        //$user->facebook_url = $inputs['facebook_url'];
        //$user->twitter_url = $inputs['twitter_url'];
        //$user->linkedin_url = $inputs['linkedin_url'];
        //$user->dribbble_url = $inputs['dribbble_url'];
        //$user->instagram_url = $inputs['instagram_url'];  


        $user->save();
        
         
            \Session::flash('flash_message', 'Changes Saved');

            return \Redirect::back();
         
         
    } 

	
	/*****user dashboard*****/
	
	public function send_mail_refer_friend(Request $request)
          {
            if(!Auth::check())	
			{
				return redirect('/login');
			}
            $to=$request['referemail']; 
			$URI = 'cashbenzo.com';
			$emailt = 'noreply@cashbenzo.com';
            $headers = 'MIME-Version: 1.0' . "\r\n";
			$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
			$headers .= 'From: '.$URI.' <' . $emailt. ">\r\n"; // Sender's Email
			$array ="<div style='color:#848484;font-family: Arial;font-size: 13px;line-height: 150%;text-align: justify;padding: 50px;'><h1>Hey,</h1>
			<p>I have been using Cashbenzo to save money on online shopping for quite some time. You too can use Cashbenzo when you shop online and they&#39;ll pay you. Yes, you read that correctly. You&#39;ll be paid in the form of Cashback. <br/> This Cashback is over and above any discount, coupon, or cashback the online store provides. Your Cashback accumulates into your Cashbenzo account and is real cash. You can transfer it to your bank, or any mobile wallets (Paytm, Freecharge or Mobikwik). <br/> What more! You can also use their CupoWallet service to save your favourite coupons to be used at a future date. In CupoWallet, you can save any of the coupons or deals available on the website so that you don&#39;t have to search for them again and also save custom coupons received directly in your email or mobile.<br/>  Watch this explainer video to learn more. <br/> If you sign-up today using my referral code ".Auth::user()->ucode.", you&#39;ll get additional Rs.100 joining bonus. Click on the link below to join using my referral code.</p>
			<p>JOIN NOW: <a href='". $request['mailmessage']."'>Click here</a></p>"."<br/>Cheers!<br/>".ucwords(Auth::user()->first_name)."</div>";
			$mailmessage = $this->email_template($array); 
            $msg = wordwrap($mailmessage,500);
			/* invite users list*/
			$count=Useractivity::where(array('datakey'=>'inviteusers','dataValue'=>$to,'UserId'=>Auth::user()->id))->count();
			if($count<1){
				$user_activity= new Useractivity;
				$user_activity->datakey='inviteusers';
				$user_activity->dataValue=$to;
				$user_activity->status='Pending';
				$user_activity->UserId=Auth::user()->id;
				$user_activity->save();
			}
			/* invite users list*/
			// send email
             mail($to, ucwords(Auth::user()->first_name) ." invited you to join Cashbenzo, welcome gift inside",$msg,$headers);
			 
			 \Session::flash('flash_message', 'Your Invitation sent successfully.');
             return \Redirect::back();
          }
         
     public function unsubscribe($email)
          {
			  $count = Newsletter::where(array('email'=>$email))->count();
			  if($count<1){
				  return \Redirect('/');
			  }
			  Newsletter::where(array('email'=>$email))->delete();
			 \Session::flash('flash_message1', 'Your Email has been unsubcribed!');
				return \Redirect('/#subscribe_newsletter');
		  }
     public function submit_newsletter(Request $request)
          {
			$URI = 'Aventra.com';
			$emailt = 'harmeet.waveinfotech.biz@gmail.com';
            $to=$request['email']; 
            $headers = 'MIME-Version: 1.0' . "\r\n";
			$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
			$headers .= 'From: '.$URI.' <' . $emailt. ">\r\n"; // Sender's Email
			$count = Newsletter::where('email',$to)->count();
			if($count<1){
			$array ="<h1>Dear User,</h1>
					<p><b>Date</b>: ". date('d-m-Y H:i')."</p>
					<strong>Thank you for subscribing with us.</strong>
					<p>You will receive hot deals, coupons & tips.<p>";
			$unsubscribe = $to;
			$mailmessage = $this->email_template($array,$unsubscribe); 
            $msg = wordwrap($mailmessage,500);
			// send email
             mail($to,"Email have been subscribed",$msg,$headers);
			
			$news = new Newsletter;
			$news->date = date('d-m-Y H:i');  
			$news->email = $to;  
			$news->save(); 
				\Session::flash('flash_message1', 'Your email has been subscribed.');
				return \Redirect('/#subscribe_newsletter');
			}else{
				\Session::flash('flash_message1', 'Your Email already subcribed!');
				return \Redirect('/#subscribe_newsletter');
			}
             
		  }

	
  
   
		 
}