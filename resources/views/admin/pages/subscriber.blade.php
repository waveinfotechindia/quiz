@extends("admin.admin_app")
    
@section("content")
    
<!-- Page Header -->
<div class="content bg-gray-lighter">
    <div class="row items-push">
        <div class="col-sm-7">
            <h1 class="page-heading">
                Subscribers
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
     <button type="button" class="pull-right btn btn-primary push-5-r push-10" data-toggle="modal" data-target="#myModal">Compose Message</button>
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
                        <th>Email</th> 						                
                        <th class="hidden">ddddd</th> 							                
                        <th>Subscribe Date</th> 						                
                        <th class="text-center " style="width: 10%;">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $hj=1; ?>
                    @foreach(\App\Newsletter::orderBy('id')->get()  as $perk)
                    <tr>
                        <td>{{$hj}}</td> 
                        <td>{{$perk->email}}</td>
                        
                        <td>
                            {{$perk->date}}	
                        </td>
                       <td class="hidden">pp</td>
                     <td><a href="{{ url('admin/subscribers/delete/'.$perk->id) }}" class="btn btn-xs btn-default"  data-toggle="tooltip" title="Remove" onclick="return confirm('Are you sure? You will not be able to recover this.')"><i class="fa fa-times"></i></a>
</td>
                        
                    </tr>
                           <?php $hj++; ?>
                    @endforeach
                    
                </tbody>
            </table>
        </div>
    </div>
    <!-- END Dynamic Table Full -->
    
    
</div>
<!-- END Page Content -->
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
 {!! Form::open(array('url' => array('admin/subscribers'),'role'=>'form')) !!}  
    <!-- Modal content-->
    <div class="row modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Newsletter Member Email</h4>
      </div>
      <div class="modal-body">
		<label for="" class="col-sm-1 control-label">To:</label>
        <div class="form-group col-sm-11">
			<select id="basic" name="to[]" class="js-select2 form-control" multiple>
				<option value="" disabled>Select Subscriber Email</option>
				@foreach(\App\Newsletter::orderBy('id')->get() as $i => $emails)    
					<option value="{{$emails->email}}">{{$emails->email}}</option> 
											 
				@endforeach
			</select>
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
@endsection