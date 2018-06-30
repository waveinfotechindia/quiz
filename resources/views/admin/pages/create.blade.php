@extends("admin.admin_app")
@section('title')
Add New Post
@endsection
@section('content')
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
<!-- Page Header -->
<div class="content bg-gray-lighter">
    <div class="row items-push">
        <div class="col-sm-7">
            <h1 class="page-heading">
            Add Post
            </h1>
        </div>
        <div class="col-sm-5 text-right hidden-xs">
            <ol class="breadcrumb push-10-t">
                <li><a href="{{ URL::to('admin/blog') }}">Blog</a></li>
                <li><a class="link-effect" href="">Add Post</a></li>
            </ol>
        </div>
    </div>
</div>
<!-- END Page Header -->
<!-- Page Content -->
<div class="content content-boxed">
    <div class="row">
        <div class="col-sm-12 col-lg-12">
            <div class="block">
                <div class="block-content block-content-narrow"> 
                    
                    <form action="{{URL::to('admin/new-post')}}" method="post">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <div class="form-group">
                             <label for="first" class="control-label">Title :-</label>
                            <input required="required" value="{{ old('title') }}" placeholder="Enter title here" type="text" name = "title"class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="first" class="control-label">Description :-</label>
                            <textarea name='body'class="form-control" id="summernote">{{ old('body') }}</textarea>
                        </div>
                        <input type="submit" name='publish' class="btn btn-success" value = "Publish"/>
                        <input type="submit" name='save' class="btn btn-default" value = "Save Draft" />
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END Page Content -->            
@endsection
