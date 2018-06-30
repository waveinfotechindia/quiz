 
 <div class="col-sm-3 sidenav">
	  <section class="left-side-bar">
		<div class="user-img text-center">
		
			<img width="150px" src="{{ URL::asset(Auth::User()->image_icon) }}" class="img-responsive"/>
			<p class="edit-photo"> <a href="/dashboard/account-settings">Edit Photo</a></p>
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar1">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
		</div> 
			<span class="dividr1"></span>
			<span class="dividr1"></span>	
            <div class="clearfix"></div>	
<div class="collapse navbar-collapse" id="myNavbar1">		
		  <ul class="nav nav-pills nav-stacked db-submenu">
			<li><a href="/dashboard"><i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard</a></li>
                        @if(Auth::user()->usertype == 'Retailer')
			<li><a href="/dashboard/mycoupon"><i class="fa fa-tachometer" aria-hidden="true"></i> My Coupons</a></li>
			<li><a href="/dashboard/coupon"><i class="fa fa-tachometer" aria-hidden="true"></i> Add Coupons</a></li>
			<li><a href="/dashboard/mycouponorders"><i class="fa fa-tachometer" aria-hidden="true"></i> My Coupon Orders</a></li>
			<li><a href="/dashboard/mypurchasedcoupons"><i class="fa fa-tachometer" aria-hidden="true"></i> My Purchased Coupons</a></li>
			<li><a href="/edit_retailer_profile"><i class="fa fa-tachometer" aria-hidden="true"></i> Edit Retailer Profile</a></li>
                        @endif
                        @if(Auth::user()->usertype != 'Retailer')
			<li><a href="{{URL('dashboard/notification')}}"><i class="fa fa-comment" aria-hidden="true"></i> Notification</a></li>
                        @endif
			<li><a href="/dashboard/account-settings"><i class="fa fa-gears" aria-hidden="true"></i> Account Settings</a></li>
			<!--li ><a href="#section1"><img src="{{ URL::asset('site_assets/images/icon-recent.png') }}" class="img-responsive"/> Recent Viewed</a></li-->
			@if(Auth::user()->usertype != 'Retailer')
                        <li><a href="{{ URL('dashboard/my-orders')}}"><i class="fa fa-inr" aria-hidden="true"></i> My Orders</a></li>
                        <li><a href="{{ URL('dashboard/my-cashback')}}"><i class="fa fa-inr" aria-hidden="true"></i> My Cashback</a></li>
			
                        <li>
				<a href="/dashboard/favourite-stores"><i class="fa fa-heart" aria-hidden="true"></i> Favourite Stores <span class="voting"><?php echo DB::table('stores')
		   ->leftJoin('listings_voting', 'listings_voting.store', '=', 'stores.store_slug')
		   ->select('stores.*')->where(array('listings_voting.UserId'=>Auth::user()->id,'listings_voting.type'=>'Favourite'))
		   ->count(); ?></span></a>
			</li>
                        @endif
<!--			<li>
				<a href="/dashboard/favourite-coupon"><i class="fa fa-tachometer" aria-hidden="true"></i>  Favourite Coupons <span class="voting">{{\App\ListingsVote::where(array('type'=>'coupon','UserId'=>Auth::User()->id))->count()}}</span></a>
			</li>-->
			<li><a href="/dashboard/change_pass"><i class="fa fa-unlock" aria-hidden="true"></i> Change Password</a></li>
                        @if(Auth::user()->usertype != 'Retailer')
			<li><a href="/dashboard/recent-activity"><i class="fa fa-clock-o" aria-hidden="true"></i> Recent Activities</a></li>
			<li><a href="/dashboard/refer-friend"><i class="fa fa-paper-plane-o" aria-hidden="true"></i> Refer Friend</a></li>
			<li data-toggle="collapse" data-target="#cupow"><a  href="javascript:;"><i class="fa fa-google-wallet" aria-hidden="true"></i> Cupowallet <i class="fa fa-caret-down" aria-hidden="true"></i> </a></li>
                        @endif
			<div id="cupow" class="collapse">
			<li><a  href="/dashboard/cupowallet"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Online Coupons</a></li>
			<li><a  href="/dashboard/expired-coupons"><i class="fa fa-empire" aria-hidden="true"></i> Expired Coupons</a></li>
			<li><a  href="/dashboard/recommended-coupons"><i class="fa fa-credit-card" aria-hidden="true"></i> Recommend Coupons</a></li>
			<li><a  href="/dashboard/custum_coupons"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i> Custom Coupons</a></li>
			</div>
			<li><a href="{{URL('dashboard/customer-support')}}"><i class="fa fa-phone" aria-hidden="true"></i> Customer Support</a></li>
                        
			<li><a href="/logout"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
		  </ul>	
</div>	 
		  </section>
    </div>