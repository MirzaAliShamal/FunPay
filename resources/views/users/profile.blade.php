@extends('layouts.backend.app')
@section('content')
<div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Profile</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item">Dashboard</li>
              <li class="breadcrumb-item active">Profile</li>
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
                    <div class="card card-primary card-outline">
                        <div class="card-body box-profile">
                            <div class="text-center">
                                @if($userprofile && $userprofile->profile_img)
                                    <img src="{{ asset('public/' . $userprofile->profile_img) }}" class="profile-user-img img-fluid img-circle" alt="User profile picture">
                                @else
                                    <img src="{{ asset('public/userprofile/21.jpg') }}" class="profile-user-img img-fluid img-circle">
                                @endif
                            </div>
                            <h3 class="profile-username text-center">{{ $user->name }}</h3>
                            <p class="text-muted text-center">{{ $user->designation }}</p>
                            <ul class="list-group list-group-unbordered mb-3">
                                <li class="list-group-item">
                                <b>Email</b> <a class="float-right">{{ $user->email }}</a>
                                </li>
                                <li class="list-group-item">
                                <b>Phone Number</b> <a class="float-right">{{ $user->phone_number }}</a>
                                </li>
                                <li class="list-group-item">
                                <b>Address</b> <a class="float-right">{{ $user->address }}</a>
                                </li>
                            </ul>
                            <div class="row">
                                <div class="col-5"></div>
                                <div class="col-2">
                                    <button class="btn btn-primary btn-block" data-toggle="modal" data-target="#uploadModal">
                                        Image Uploader
                                    </button> 
                                </div>
                            </div>                                
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
                <form action="{{route('updateprofile')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <div class="form-group">
                            <p class="mb-2 text-muted">Org Logo</p>
                            <div class="custom-file mb-3">
                              <input type="file" class="custom-file-input" id="customFile" name="profile_img">
                              <label name="profile_img" class="custom-file-label" for="customFile">Choose file</label>
                              <span class="text-danger">{{$errors->first('profile_img')}}</span>
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