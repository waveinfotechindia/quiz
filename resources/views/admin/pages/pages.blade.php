@extends("admin.admin_app")

@section("content")

<!-- Page Header -->
<div class="content bg-gray-lighter">
    <div class="row items-push">
        <div class="col-sm-7">
            <h1 class="page-heading">
                Pages
            </h1>
        </div>
        <div class="col-sm-5 text-right hidden-xs">
            <ol class="breadcrumb push-10-t">
                <li><a href="{{ URL::to('admin/dashboard') }}">Dashboard</a></li>
                <li><a class="link-effect" href="">Pages</a></li>
            </ol>
        </div>
    </div>
</div>
<!-- END Page Header -->
    
<!-- Page Content -->
<div class="content">
    <!-- Dynamic Table Full -->
    <div class="block">
        <div class="block-header">                            
            <a class="pull-right btn btn-primary push-5-r push-10" href="{{URL::to('admin/new-page')}}" ><i class="fa fa-plus"></i> Add Page</a>
                
            <div class="clearfix"></div>
                
            @if(Session::has('flash_message'))
            <div class="alert alert-success">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                {{ Session::get('flash_message') }}
            </div>
            @endif
        </div>
        <div class="block-content">
            @if ( !$posts->count() )
There is no post till now. Login and write a new post now!!!
@else
<div class="">
    <table class="table table-bordered table-striped ">
                <thead>
                    <tr>
                        <th class="text-left">Title</th>
                        <th class="text-left">Slug</th>
                        <th class="text-left">Status</th>
                        <th class="text-center" style="width: 10%;">Actions</th>
                    </tr>
                </thead>
	@foreach( $posts as $post )
        <tr>
		
            <td><h4>{{$post->title }}</h4></td>
            <td>{{$post->slug }}</td>
            <td>@if($post->active == '1')<span class="label label-success"> Publish </span> @else <span class="label label-danger"> Draft </span> @endif</h3></td>
					
            <td>                    
            <a href="{{  url('admin/delete-page/'.$post->id.'?_token='.csrf_token()) }}" class="btn" style="float: right" onclick="return confirm('Are you sure? You will not be able to recover this.')"><i class="fa fa-times"></i></a>
            <a class="btn" style="float: right" href="{{ url('admin/edit-page/'.$post->slug)}}"><i class="fa fa-pencil"></i></a>
            </td>	
		
    </tr>
	@endforeach
        
  
         </table>
      {!! $posts->render() !!}
</div>
@endif
        </div>
    </div>
    <!-- END Dynamic Table Full -->
</div>
<!-- END Page Content -->
    
@endsection