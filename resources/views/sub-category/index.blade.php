@extends('layouts.backend.app')
@section('content')
 <div class="content-wrapper">
  <section class="content-header">
   <div class="container-fluid">
    <div class="row mb-2">
     <div class="col-sm-6">
      <h1>Sub Category</h1>
     </div>
     <div class="col-sm-6">
      <ol class="breadcrumb float-sm-right">
       <li class="breadcrumb-item">Dashboard</li>
       <li class="breadcrumb-item active">Sub Categories</li>
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
        <h3 class="card-title">Sub Categories</h3>
        <a href="{{ route('admin.subcategory.create') }}" class="btn btn-info float-right">New</a>
       </div>
       <!-- /.card-header -->
       <div class="card-body">
        <table class="table table-bordered">
         <thead>
          <tr>
           <th style="width: 10px">#</th>
           <th>Sub Category</th>
           <th>Action</th>
          </tr>
         </thead>
         <tbody>
          <tr>
           <td>1.</td>
           <td>Update software</td>
           <td>
            <div class="progress progress-xs">
             <div class="progress-bar progress-bar-danger" style="width: 55%"></div>
            </div>
           </td>
           <td><a href="{{ route('admin.subcategory.edit', ['subcategory' => 1]) }}" class="btn btn-warning">Update</a></td>
          </tr>
         </tbody>
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
@endsection
