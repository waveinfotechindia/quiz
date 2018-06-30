@extends("admin.admin_app")

@section('head_url', Request::url())

@section("content")


<script src="{{ URL::asset('site_assets/js/jquery.min.js') }}"></script> 
    
    
<link rel="stylesheet" href="{{ URL::asset('site_assets/summernote/summernote.css') }}">
    
<script src="{{ URL::asset('site_assets/summernote/summernote.js') }}"></script>
    
<script>
    $(document).ready(function() {
        $('#summernote').summernote({
            height: 250,                 // set editor height
            minHeight: null,             // set minimum height of editor
            maxHeight: null,             // set maximum height of editor
            focus: false                  // set focus to editable area after initializing summernote
        });
    });
</script>  
 

<script type="text/javascript">
    var abc = 0;
    //function increment() {
    
    //};
    $(document).ready(function() {
        $('#add_more').click(function() {//When Add More Files button Clicked these function Willbe Called (new file field is added dynamically)
            $(this).before($("<div/>", {id: 'filediv'}).fadeIn('slow').append(
                    $("<input/>", {name: 'gallery_file[]', type: 'file', id: 'file'}),        
            $("")
                    ));
        });
        
        $('body').on('change', '#file', function(){
            if (this.files && this.files[0]) {
                //increment();
                abc += 1;
                var z = abc - 1;
                var x = $(this).parent().find('#previewimg' + z).remove();
                $(this).before("<div id='abcd"+ abc +"' class='abcd'><img width='100' id='previewimg" + abc + "' src=''/></div>");
                var reader = new FileReader();
                reader.onload = imageIsLoaded;
                reader.readAsDataURL(this.files[0]);
                $(this).hide();
                $("#abcd"+ abc).append($("<img/>", {id: 'img', src: '{{ URL::asset('site_assets/images/x.png') }}', alt: 'delete'}).click(function() {
                    //$(this).parent().parent().remove();
                    $(this).parent().remove();
                }));
            }
        });
        
        function imageIsLoaded(e) {
            $('#previewimg' + abc).attr('src', e.target.result);
        };
        
        $('#upload').click(function(e) {
            var name = $(":file").val();
            if (!name)
            {
                alert("First Image Must Be Selected");
                e.preventDefault();
            }
        });
    });
</script> 


    
<div class="content bg-gray-lighter">
    <div class="row items-push">
        <div class="col-sm-7">
            <h1 class="page-heading">
                {{ isset($listing->id) ? 'Edit Banner ' : 'Add Banner' }}</h1>
            
        </div>
        <div class="col-sm-5 text-right hidden-xs">
            <ol class="breadcrumb push-10-t">
                <li><a href="{{ URL::to('admin/dashboard') }}">Dashboard</a></li>
                 <li><a class="link-effect" href="{{ URL::to('admin/slider_management') }}">Banner</a></li>
                <li class="active">{{ isset($listing->id) ? 'Edit Banner ' : 'Add Banner' }}</li>
            </ol>
        </div>
    </div>
</div>
<!-- END Page Header -->
<div class="content content-boxed">
    <div class="row">
        <div class="col-sm-12 col-lg-12">
            <div class="block">
                    <div class="block-content block-content-narrow"> 
                        
                    {!! Form::open(array('url' => array('admin/submit_slide'),'class'=>'','name'=>'listing_form','id'=>'listing_form','role'=>'form','enctype' => 'multipart/form-data')) !!}
                    <input type="hidden" name="id" value="{{ isset($listing->id) ? $listing->id : null }}">
                    <div class="row">
                        <div class="col-md-12" id="aboutus">
                            
                            
                            @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <ul style="list-style: none;">
                                    @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                            @endif
                            @if(Session::has('flash_message'))
                            <div class="alert alert-success">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span></button>
                                {{ Session::get('flash_message') }}
                            </div>
                            @endif
                                
                            <div class="well-box">
                                <div class="form-group col-md-12">
                                    <label for="first" class="control-label">Title :-</label>
                                    <input type="text" class="form-control input-md" placeholder="Title" name="title" id="title" value="{{ isset($listing->title) ? $listing->title : null }}" required>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="well-box">
                                <div class="form-group col-md-6">
                                    <label for="first" class="control-label">Main Slide Image :-</label>
                                    <input type="file" name="image" id="input-file" class="form-control input-md" >
                                </div>
                                <div class="form-group col-md-6">
                                    @if(isset($listing->image))
                                    <img src="{{ URL::asset('site_assets/banner/'.$listing->image) }}" width="80" alt="featured">
                                    @endif
                                </div>
                                <div class="clearfix"></div>
                                <div class="form-group col-md-6">
                                   
                                   <label for="first" class="control-label">Select Country :-</label>
                                    <select name="country" class="form-control">
                                    <?php $country = DB::table('country')->get();
                                    foreach($country as $countrydata){ ?>
                                    <option value="{{$countrydata->name}}">{{$countrydata->name}}</option>
                                    <?php }  ?>
                                    </select>
                                  
                                </div>
                                 <div class="clearfix"></div>
                                  <div class="form-group col-md-6">
                                    <label for="first" class="control-label">Icon image :-</label>
                                    <input type="file" name="icon" id="input-file" class="form-control input-md" >
                                </div>
                                 <div class="form-group col-md-6">
                                    @if(isset($listing->icon))
                                    <img src="{{ URL::asset('site_assets/images/'.$listing->icon) }}" width="80" alt="featured">
                                    @endif
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="first" class="control-label">Main Slide Url :-</label>
                                    <input type="url" class="form-control input-md" placeholder="Main Slide Url " name="url" id="title" value="{{ isset($listing->url) ? $listing->url : null }}" >
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            
                            <div class="center mb20">
                                <button class="btn btn-success" type="submit">Submit</button>
                            </div>
                            {!! Form::close() !!} 
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END Page Content -->  
        @endsection