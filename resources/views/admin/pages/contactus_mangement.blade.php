@extends("admin.admin_app")
    
@section("content")
    
<!-- Page Header -->
<div class="content bg-gray-lighter">
    <div class="row items-push">
        <div class="col-sm-7">
            <h1 class="page-heading">
                ContactUs Mangement
            </h1>
        </div>
        <div class="col-sm-5 text-right hidden-xs">
            <ol class="breadcrumb push-10-t">
                <li><a href="{{ URL::to('admin/dashboard') }}">Dashboard</a></li>
                
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
 
        </div>
        <div class="block-content">
            @if(Session::has('flash_message'))
            <div class="alert alert-success">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                {{ Session::get('flash_message') }}
            </div>
            @endif
            <!-- DataTables init on table by adding .js-dataTable-full class, functionality initialized in js/pages/base_tables_datatables.js -->
            <table class="table table-bordered table-striped users-dataTable-full">
                <thead>
                    <tr>
                        <th>SR.No</th>
                        <th>Name</th> 
                        <th>Email</th> 						                
                        <th>Subject</th> 
                        <th>Message</th> 
                        <th>Date</th> 						                
                        <th class="text-center " style="width: 10%;">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $hj=1; ?>
                    @foreach(\App\Contactus::orderBy('id')->get()  as $perk)
                    <tr>
                        <td>{{$hj}}</td> 
                        <td>{{$perk->name}}</td>
                        <td>{{$perk->email}}</td>
                        <td>{{$perk->subject}}</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal"   data-target="#myModal{{$hj}}">{{str_limit($perk->message,25)}}</button></td>
                        <td>
                            {{$perk->created_at}}	
                        </td>
                       
                     <td><a href="{{ url('admin/contacts/delete/'.$perk->id) }}" class="btn btn-xs btn-default"  data-toggle="tooltip" title="Remove" onclick="return confirm('Are you sure? You will not be able to recover this.')"><i class="fa fa-times"></i></a>
 <button type="button" class="btn btn-xs btn-default" data-toggle="modal" data-target="#myModalreply{{$hj}}">Reply</button>
                     </td>
                        
                    </tr>
                           
                    
<!-- Modal -->
<div id="myModal{{$hj}}" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Message</h4>
      </div>
      <div class="modal-body">
        <p>{{$perk->message}}</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
                
  <div id="myModalreply{{$hj}}" class="modal fade" role="dialog">
  <div class="modal-dialog">
 {!! Form::open(array('url' => array('admin/subscribers'),'role'=>'form')) !!}  
    <!-- Modal content-->
    <div class="row modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Reply To {{$perk->name}}</h4>
      </div>
      <div class="modal-body">
		<label for="" class="col-sm-1 control-label">To:</label>
        <div class="form-group col-sm-11">
            <input type="text" name="to[]" class="form-control" value="{{$perk->email}}">
		</div>
		<label for="" class="col-sm-1 control-label">Subject:</label>
        <div class="form-group col-sm-11">
			<input type="text" name="subject" class="form-control">
		</div>
		<label for="" class="col-sm-1 control-label">Message:</label>
        <div class="form-group col-sm-11">
			<textarea id="summernote" class="form-control js-summernote" name="message"></textarea>
		</div>
		<div class="form-group col-sm-11">
			<button type="submit" class="btn btn-primary">Send</button>
		</div>
		
		<div class="clearfix"></div>
      </div>
     
    </div>
	 {!! Form::close() !!} 
<style>
.select2 {
  width: 100% !important;
}
.modal-dialog {
  width: 60%;
}
</style>
  </div>
</div>
                <?php $hj++; ?>
                    @endforeach
                    
                </tbody>
            </table>
        </div>
    </div>
    <!-- END Dynamic Table Full -->
    
    
</div>
<!-- END Page Content -->

@endsection