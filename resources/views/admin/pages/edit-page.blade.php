@extends("admin.admin_app")

@section('title')
Edit Post
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
            Edit Page
            </h1>
        </div>
        <div class="col-sm-5 text-right hidden-xs">
            <ol class="breadcrumb push-10-t">
                <li><a href="{{ URL::to('admin/pages') }}">Pages</a></li>
                <li><a class="link-effect" href="">Edit Page</a></li>
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
<form method="post" action='{{ url("admin/update-page") }}'>
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<input type="hidden" name="post_id" value="{{ $post->id }}{{ old('post_id') }}">
	<div class="form-group">
             <label for="first" class="control-label">Title :-</label>
		<input required="required" placeholder="Enter title here" type="text" name = "title" class="form-control" value="@if(!old('title')){{$post->title}}@endif{{ old('title') }}"/>
	</div>
	<div class="form-group">
             <label for="first" class="control-label">Description :-</label>
		<textarea name='body'class="form-control js-summernote " id="summernote">@if(!old('body')){!! $post->body !!}@endif{!! old('body') !!}</textarea>
	</div>
	@if($post->active == '1')
	<input type="submit" name='publish' class="btn btn-success" value = "Update"/>
	@else
	<input type="submit" name='publish' class="btn btn-success" value = "Publish"/>
	@endif
	<input type="submit" name='save' class="btn btn-default" value = "Save As Draft" />
	<a href="{{  url('admin/delete-page/'.$post->id.'?_token='.csrf_token()) }}" class="btn btn-danger">Delete</a>
	<div class="form-group clearfix"></div>
</form>
 </div>
            </div>
        </div>
    </div>
</div>
<!-- END Page Content -->            
@endsection
