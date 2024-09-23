@extends('layouts.backend.app')
@section('content')
 <div class="content-wrapper">
  <section class="content-header">
   <div class="container-fluid">
    <div class="row mb-2">
     <div class="col-sm-6">
      <h1>Offer Categories</h1>
     </div>
     <div class="col-sm-6">
      <ol class="breadcrumb float-sm-right">
       <li class="breadcrumb-item">Dashboard</li>
       <li class="breadcrumb-item active">Offer Categories</li>
      </ol>
     </div>
    </div>
   </div>
  </section>
  <div class="col-12">
   @if (Session::has('success'))
    <div class="alert alert-success alert-dismissible fs-15 fade show mb-4">
     {{ session('success') }}
     <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
     </button>
    </div>
   @endif
  </div>
  <section class="content">
   <div class="container-fluid">
    <div class="row">
     <div class="col-md-12">
      <div class="card">
       <div class="card-header">
        <h3 class="card-title">Offer Categories</h3>
        <a href="{{ route('admin.offer.create') }}" class="btn btn-info float-right">New</a>
       </div>
       <!-- /.card-header -->
       <div class="card-body">
        <table class="table table-bordered" id="offer-categories">
         <thead>
          <tr>
           <th style="width: 10px">#</th>
           <th>Name</th>
           <th>Status</th>
           <th>Action</th>
          </tr>
         </thead>
        </table>
       </div>
      </div>
     </div>
    </div>
   </div>
  </section>
 </div>
 <!-- Modal for Upload -->
 <div class="modal fade" id="uploadModal" tabindex="-1" aria-labelledby="uploadModalLabel" aria-hidden="true">
  <div class="modal-dialog">
   <div class="modal-content">
    <div class="modal-header">
     <h5 class="modal-title" id="uploadModalLabel">Upload Profile Picture</h5>
     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">&times;</span>
     </button>
    </div>
    <div class="modal-body">
     <form action="{{ route('updateprofile') }}" method="POST" enctype="multipart/form-data">
      @csrf
      <div class="mb-3">
       <div class="form-group">
        <p class="mb-2 text-muted">Org Logo</p>
        <div class="custom-file mb-3">
         <input type="file" class="custom-file-input" id="customFile" name="profile_img">
         <label name="profile_img" class="custom-file-label" for="customFile">Choose file</label>
         <span class="text-danger">{{ $errors->first('profile_img') }}</span>
        </div>
       </div>
      </div>
      <button type="submit" class="btn btn-primary">Upload</button>
     </form>
    </div>
   </div>
  </div>
 </div>
@endsection

@section('script')
 <script>
  $(function() {
   $('#offer-categories').DataTable({
    processing: true,
    serverSide: true,
    ajax: '{{ route('admin.offer.data') }}',
    columns: [{
      data: 'id',
      name: 'id'
     },
     {
      data: 'name',
      name: 'name'
     },
     {
      data: 'status',
      name: 'status',
      orderable: false,
      searchable: false
     },
     {
      data: 'action',
      name: 'action',
      orderable: false,
      searchable: false
     }
    ]
   });
  });
 </script>
@endsection
