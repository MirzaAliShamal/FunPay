@extends('layouts.backend.app')
@section('content')
<!--**********************************
        Content body start
***********************************-->
<div class="content-wrapper">
    <div class="container">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Organization Profile</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item active">Dashboard</li>
                    <li class="breadcrumb-item active">Profile</li>
                    </ol>
                </div>
                </div>
            </div>
        </section>
        <div class="col-12">
            @if (Session::has('success'))
                <div class="alert alert-success alert-dismissible fade show mb-4">
                    {{ session('success') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif
        </div>         
        <section class="content">
            <div class="container-fluid">
                <div class="card card-info">
                    <div class="card-header">
                        <h3 class="card-title">Organization Profile</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                            <i class="fas fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-tool" data-card-widget="remove">
                            <i class="fas fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('updateOrgLogo') }}" enctype="multipart/form-data" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <p class="mb-2 text-muted">Org Logo</p>
                                        <div class="custom-file mb-3">
                                          <input type="file" class="custom-file-input" id="customFile" name="org_logo">
                                          <label class="custom-file-label" for="customFile">Choose file</label>
                                          <span class="text-danger">{{$errors->first('org_logo')}}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-9"></div>
                                <div class="col-md-3 d-flex justify-content-end">
                                    <button type="submit" class="btn btn-success m-1">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<!--**********************************
        Content body end
***********************************-->		
@endsection

@section('script')
@endsection
