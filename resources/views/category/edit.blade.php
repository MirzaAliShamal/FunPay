@extends('layouts.backend.app')
@section('content')
 <div class="content-wrapper">
  <section class="content-header">
   <div class="container-fluid">
    <div class="row mb-2">
     <div class="col-sm-6">
      <h1>Categories</h1>
     </div>
     <div class="col-sm-6">
      <ol class="breadcrumb float-sm-right">
       <li class="breadcrumb-item">Dashboard</li>
       <li class="breadcrumb-item active">Categories</li>
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
        <h3 class="card-title">Update Category</h3>
       </div>
       <!-- /.card-header -->
       <!-- form start -->
       <form action="{{ route('admin.category.update', ['category' => 1]) }}" method="POST">
        <div class="card-body">
         <div class="form-group">
          <label for="exampleInputEmail1">Category Name</label>
          <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
         </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
         <button type="submit" class="btn btn-primary">Update</button>
        </div>
       </form>
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
@endsection
