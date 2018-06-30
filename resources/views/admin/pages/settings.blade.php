@extends("admin.admin_app")

@section("content")

<!-- Page Header -->
                <div class="content bg-gray-lighter">
                    <div class="row items-push">
                        <div class="col-sm-7">
                            <h1 class="page-heading">
                                Settings
                            </h1>
                        </div>
                        <div class="col-sm-5 text-right hidden-xs">
                            <ol class="breadcrumb push-10-t">
                                <li><a href="{{ URL::to('admin/dashboard') }}">Dashboard</a></li>
                                <li><a class="link-effect" href="">Settings</a></li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- END Page Header -->

                <!-- Page Content -->
                <div class="content content-boxed">
                    <div class="row">
                        <div class="col-sm-12 col-lg-12">

                             <!-- Block Tabs Alternative Style -->
                            <div class="block">
                                <ul class="nav nav-tabs nav-tabs-alt" data-toggle="tabs">
                                    
                                     <li role="presentation" class="active">
                                        <a href="#general_settings" aria-controls="general_settings" role="tab" data-toggle="tab">General Settings</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#homepage_settings" aria-controls="homepage_settings" role="tab" data-toggle="tab">Home Page Settings</a>
                                    </li>

                                    <li role="presentation">
                                        <a href="#contactus_settings" aria-controls="contactus_settings" role="tab" data-toggle="tab">Contact Page</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#other_Settings" aria-controls="other_Settings" role="tab" data-toggle="tab">Other Settings</a>
                                    </li>
                                     
                                </ul>
                                <div class="block-content tab-content">
 

                                    <div class="col-lg-8 tab-pane active" id="general_settings">

                                        @if (count($errors) > 0)
                                        <div class="alert alert-danger">
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <ul>
                                                @foreach ($errors->all() as $error)
                                                    <li>{{ $error }}</li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    @endif
                                 @if(Session::has('flash_message'))
                                        <div class="alert alert-success">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            {{ Session::get('flash_message') }}
                                        </div>
                                    @endif

                                        {!! Form::open(array('url' => 'admin/settings','class'=>'form-horizontal padding-15','name'=>'account_form','id'=>'account_form','role'=>'form','enctype' => 'multipart/form-data')) !!}
                
                
                                        <div class="form-group">
                                            <label for="avatar" class="col-sm-3 control-label">Logo</label>
                                            <div class="col-sm-9">
                                                <div class="media">
                                                    <div class="media-left">
                                                        @if($settings->site_logo)
                                                         
                                                            <img src="{{ URL::asset('upload/'.$settings->site_logo) }}" width="150" alt="person">
                                                        @endif
                                                                                        
                                                    </div>
                                                    <div class="media-body media-middle">
                                                        <input type="file" name="site_logo" class="filestyle">
                                                        <small class="text-muted bold">Size 190x23px</small>
                                                    </div>
                                                </div>
                            
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="avatar" class="col-sm-3 control-label">Favicon</label>
                                            <div class="col-sm-9">
                                                <div class="media">
                                                    <div class="media-left">
                                                        @if($settings->site_favicon)
                                                         
                                                            <img src="{{ URL::asset('upload/'.$settings->site_favicon) }}" alt="person">
                                                        @endif
                                                                                        
                                                    </div>
                                                    <div class="media-body media-middle">
                                                        <input type="file" name="site_favicon" class="filestyle">
                                                        <small class="text-muted bold">Size 16x16px</small>
                                                    </div>
                                                </div>
                            
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Site Mode</label>
                                            <div class="col-sm-9">
												<select name="under_maintenane" class="form-control">
													<option <?php if($settings->under_maintenane==0)echo "selected"; ?> value="0">Live</option>
													<option <?php if($settings->under_maintenane==1)echo "selected"; ?> value="1">Under Maintenane</option>
												</select>
                                            </div>
                                        </div>                                        
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Site Name</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="site_name" value="{{ $settings->site_name }}" class="form-control" value="">
                                            </div>
                                        </div>                                        
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Site Email</label>
                                            <div class="col-sm-9">
                                                <input type="email" name="site_email" value="{{ $settings->site_email }}" class="form-control" value="">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Site Description</label>
                                            <div class="col-sm-9">
                                                <textarea type="text" name="site_description" class="form-control" rows="5" placeholder="A few words about site">{{ $settings->site_description }}</textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Site Keyword</label>
                                            <div class="col-sm-9">
                                                <textarea type="text" name="site_keyword" class="form-control" rows="5" placeholder="A few keywords about site">{{ $settings->site_keyword }}</textarea>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Signup Bonus</label>
                                            <div class="col-sm-9">
                                                <input type="number" name="signup_bonus" class="form-control" value="{{ $settings->signup_bonus }}" placeholder="signup_bonus">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Referral Cashback</label>
                                            <div class="col-sm-9">
                                                <input type="number" name="referral_cashback" class="form-control" value="{{ $settings->referral_cashback }}" placeholder="referral_cashback">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Minimum Withdraw Amount</label>
                                            <div class="col-sm-9">
                                                <input type="number" name="minimum_withdraw" class="form-control" value="{{ $settings->minimum_withdraw }}" placeholder="minimum_withdraw">
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Google Map API</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="google_map_api" value="{{ $settings->google_map_api }}" class="form-control" value="">
                                            </div>
                                        </div>
                                        <!--div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Google App Id</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="google_app_id" value="{{ $settings->google_app_id }}" class="form-control" value="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Google Secret Key</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="google_secret_key" value="{{ $settings->google_secret_key }}" class="form-control" value="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Facebook App Id</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="facebook_app_id" value="{{ $settings->facebook_app_id }}" class="form-control" value="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Facebook Secret Key</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="facebook_secret_key" value="{{ $settings->facebook_secret_key }}" class="form-control" value="">
                                            </div>
                                        </div-->
                                        <hr>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Facebook URL</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="facebook_url" value="{{ $settings->facebook_url }}" class="form-control" value="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Twitter URL</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="twitter_url" value="{{ $settings->twitter_url }}" class="form-control" value="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Google+ URL</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="gplus_url" value="{{ $settings->gplus_url }}" class="form-control" value="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">LinkedIn URL</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="linkedin_url" value="{{ $settings->linkedin_url }}" class="form-control" value="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Instagram URL</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="instagram_url" value="{{ $settings->instagram_url }}" class="form-control" value="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Youtube URL</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="pinterest_url" value="{{ $settings->pinterest_url }}" class="form-control" >
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Copyright Text</label>
                                            <div class="col-sm-9">
                                                <textarea type="text" name="site_copyright" class="form-control" rows="5">{{ $settings->site_copyright }}</textarea>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="form-group">
                                            <div class="col-md-offset-3 col-sm-9 ">
                                                <button type="submit" class="btn btn-primary">Save Changes <i class="md md-lock-open"></i></button>
                                                 
                                            </div>
                                        </div>

                                    {!! Form::close() !!} 
                                    </div>
                                    <div class="col-lg-8 tab-pane" id="homepage_settings">

                                       {!! Form::open(array('url' => 'admin/homepage_settings','class'=>'form-horizontal padding-15','name'=>'layout_settings_form','id'=>'layout_settings_form','role'=>'form','enctype' => 'multipart/form-data')) !!}
                
                                        <div class="form-group">
                                            <label for="avatar" class="col-sm-3 control-label">Home Slide 1</label>
                                            <div class="col-sm-9">
                                                <div class="media">
                                                    <div class="media-left">
                                                        @if($settings->home_slide_image1)
                                                         
                                                            <img src="{{ URL::asset('upload/'.$settings->home_slide_image1) }}" alt="bg image" width="150">
                                                        @endif
                                                                                        
                                                    </div>
                                                    <div class="media-body media-middle">
                                                        <input type="file" name="home_slide_image1" class="filestyle">
                                                         <small class="text-muted bold">Size 1400x500px</small>
                                                    </div>
                                                </div>
                            
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="avatar" class="col-sm-3 control-label">Home Slide 2</label>
                                            <div class="col-sm-9">
                                                <div class="media">
                                                    <div class="media-left">
                                                        @if($settings->home_slide_image2)
                                                         
                                                            <img src="{{ URL::asset('upload/'.$settings->home_slide_image2) }}" alt="bg image" width="150">
                                                        @endif
                                                                                        
                                                    </div>
                                                    <div class="media-body media-middle">
                                                        <input type="file" name="home_slide_image2" class="filestyle">
                                                         <small class="text-muted bold">Size 1400x500px</small>
                                                    </div>
                                                </div>
                            
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="avatar" class="col-sm-3 control-label">Home Slide 3</label>
                                            <div class="col-sm-9">
                                                <div class="media">
                                                    <div class="media-left">
                                                        @if($settings->home_slide_image3)
                                                         
                                                            <img src="{{ URL::asset('upload/'.$settings->home_slide_image3) }}" alt="bg image" width="150">
                                                        @endif
                                                                                        
                                                    </div>
                                                    <div class="media-body media-middle">
                                                        <input type="file" name="home_slide_image3" class="filestyle">
                                                         <small class="text-muted bold">Size 1400x500px</small>
                                                    </div>
                                                </div>
                            
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Slide Title</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="home_slide_title" value="{{ $settings->home_slide_title }}" class="form-control" value="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-sm-3 control-label">Slide Text</label>
                                            <div class="col-sm-9">
                                                <textarea type="text" name="home_slide_text" class="form-control" rows="5" placeholder="A few words">{{ $settings->home_slide_text }}</textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="avatar" class="col-sm-3 control-label">Page Title Background</label>
                                            <div class="col-sm-9">
                                                <div class="media">
                                                    <div class="media-left">
                                                        @if($settings->page_bg_image)
                                                         
                                                            <img src="{{ URL::asset('upload/'.$settings->page_bg_image) }}" alt="bg image" width="150">
                                                        @endif
                                                                                        
                                                    </div>
                                                    <div class="media-body media-middle">
                                                        <input type="file" name="page_bg_image" class="filestyle">
                                                         <small class="text-muted bold">Size 1400x500px</small>
                                                    </div>
                                                </div>
                            
                                            </div>
                                        </div>
 
                                         
                                        <hr>
                                        <div class="form-group">
                                            <div class="col-md-offset-3 col-sm-9 ">
                                                <button type="submit" class="btn btn-primary">Save Changes <i class="md md-lock-open"></i></button>
                                                 
                                            </div>
                                        </div>

                                    {!! Form::close() !!}  
                                    </div>
                                    <div class="col-lg-12 tab-pane" id="contactus_settings">
                                            {!! Form::open(array('url' => 'admin/contactus_settings','class'=>'form-horizontal padding-15','name'=>'contactus_settings_form','id'=>'contactus_settings_form','role'=>'form')) !!}
                
                 
                                           <div class="form-group">
                                                <label for="" class="col-sm-3 control-label">Title</label>
                                                <div class="col-sm-9">
                                                    <input type="text" name="contact_title" value="{{ $settings->contact_title }}" class="form-control" value="">
                                                </div>
                                            </div>  
                                            <div class="form-group">
                                                <label for="" class="col-sm-3 control-label">Address</label>
                                                <div class="col-sm-9">
                                                    <textarea type="text" name="contact_address" class="js-summernote form-control" rows="5">{{ $settings->contact_address }}</textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="" class="col-sm-3 control-label">Contact Email</label>
                                                <div class="col-sm-9">
                                                    <input type="text" name="contact_email" value="{{ $settings->contact_email }}" class="form-control" value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="" class="col-sm-3 control-label">Contact Number</label>
                                                <div class="col-sm-9">
                                                    <input type="text" name="contact_number" value="{{ $settings->contact_number }}" class="form-control" value="">
                                                </div>
                                            </div>
                                            <!--div class="form-group">
                                                <label for="" class="col-sm-3 control-label">Map Latitude and Longitude</label>
                                                <div class="col-sm-9">
                                                    <div class="col-sm-6">
                                                        <input type="text" name="contact_lat" value="{{ $settings->contact_lat }}" class="form-control" placeholder="Latitude">
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <input type="text" name="contact_long" value="{{ $settings->contact_long }}" class="form-control" placeholder="Longitude">
                                                    </div>
                                                </div>
                                            </div--> 
                                            <hr>
                                            <div class="form-group">
                                                <div class="col-md-offset-3 col-sm-9 ">
                                                    <button type="submit" class="btn btn-primary">Save Changes <i class="md md-lock-open"></i></button>
                                                </div>
                                            </div>

                                        {!! Form::close() !!}
                                    </div>

                                    
                                    <div class="col-lg-8 tab-pane" id="other_Settings">

                                              
                                            {!! Form::open(array('url' => 'admin/headfootupdate','class'=>'form-horizontal padding-15','name'=>'pass_form','id'=>'pass_form','role'=>'form')) !!}
                
                 
                                            <div class="form-group">
                                                <label for="" class="col-sm-3 control-label">Header Code</label>
                                                <div class="col-sm-9">
                                                    <textarea type="text" name="site_header_code" class="form-control" rows="5" placeholder="You may want to add some html/css/js code to header. ">{{ $settings->site_header_code }}</textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="" class="col-sm-3 control-label">Footer Content</label>
                                                <div class="col-sm-9">
                                                    <textarea type="text" name="site_footer_code" class="form-control" rows="5" placeholder="footer content.">{{ $settings->site_footer_code }}</textarea>
                                                </div>
                                            </div>
                                              <div class="form-group">
                                                <label for="" class="col-sm-3 control-label">Today Deal</label>
                                                <div class="col-sm-9">
                                                    <textarea type="text" name="today_deal" class="form-control" rows="5" placeholder="Today Deal url">{{ $settings->today_deal }}</textarea>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="form-group">
                                                <div class="col-md-offset-3 col-sm-9 ">
                                                    <button type="submit" class="btn btn-primary">Save Changes <i class="md md-lock-open"></i></button>
                                                </div>
                                            </div>

                                        {!! Form::close() !!}
                                    </div>

                                </div>
                            </div>
                            <!-- END Block Tabs Alternative Style -->
                        </div>
                        
                    </div>
                </div>
                <!-- END Page Content -->
@endsection