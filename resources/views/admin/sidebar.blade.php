 <!-- Sidebar -->
            <nav id="sidebar">
                <!-- Sidebar Scroll Container -->
                <div id="sidebar-scroll">
                    <!-- Sidebar Content -->
                    <!-- Adding .sidebar-mini-hide to an element will hide it when the sidebar is in mini mode -->
                    <div class="sidebar-content">
                        <!-- Side Header -->
                        <div class="side-header side-content bg-white-op">
                            <!-- Layout API, functionality initialized in App() -> uiLayoutApi() -->
                            <button class="btn btn-link text-gray pull-right hidden-md hidden-lg" type="button" data-toggle="layout" data-action="sidebar_close">
                                <i class="fa fa-times"></i>
                            </button>
                            
                            <a class="h5 text-white" href="{{ URL::to('admin/dashboard') }}">
                                <span class="h4 font-w600 sidebar-mini-hide">{{getcong('site_name')}}</span>
                            </a>
                        </div>
                        <!-- END Side Header -->

                        <!-- Side Content -->
                        <div class="side-content">
                            <ul class="nav-main">
                                
                                <li><a class="{{classActivePath('dashboard')}}" href="{{ URL::to('admin/dashboard') }}"><i class="si si-speedometer"></i><span class="sidebar-mini-hide">Dashboard</span></a></li>
                                   @if(Auth::user()->pages=='on')
                                <li><a class="{{classActivePath('pages')}}" href="{{ URL::to('admin/pages') }}"><i class="fa fa-bars"></i>Pages</a></li>
                                    @endif
                                @if(Auth::user()->blog=='on')
                                <li><a class="{{classActivePath('blog')}}" href="{{ URL::to('admin/blog') }}"><i class="fa fa-suitcase"></i>Blog</a></li> 
                               @endif
                                
                                

                                <li><a class="{{classActivePath('slider_management')}}" href="{{ URL::to('admin/slider_management') }}"><i class="fa fa-suitcase"></i>Slider</a></li>
                              
                                @if(Auth::user()->users=='on')
                                <li><a class="{{classActivePath('users')}}" href="{{ URL::to('admin/users') }}"><i class="fa fa-users"></i>Users</a></li>
                                @endif
                                @if(Auth::user()->subadmins=='on')
                                <li><a class="{{classActivePath('subadmins')}}" href="{{ URL::to('admin/subadmins') }}"><i class="fa fa-users"></i>Subadmins</a></li>
                                @endif
                                @if(Auth::user()->subscribers=='on')
                                <li><a class="{{classActivePath('subscribers')}}" href="{{ URL::to('admin/subscribers') }}"><i class="fa fa-suitcase"></i>Subscribers</a></li>
                                @endif
                                @if(Auth::user()->contacts=='on')
                                <li><a class="{{classActivePath('contacts_mangement')}}" href="{{ URL::to('admin/contacts_mangement') }}"><i class="fa fa-users"></i>Contacts Mangement</a></li>
                                @endif
                               
                                @if(Auth::user()->settings=='on')
                                <li><a class="{{classActivePath('settings')}}" href="{{ URL::to('admin/settings') }}"><i class="fa fa-cog"></i>Settings</a></li> 
                                @endif
                            </ul>
                        </div>
                        <!-- END Side Content -->
                    </div>
                    <!-- Sidebar Content -->
                </div>
                <!-- END Sidebar Scroll Container -->
            </nav>
            <!-- END Sidebar -->