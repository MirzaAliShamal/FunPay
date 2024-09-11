<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Forget Password?</title>

  <link rel="icon" href="{{ asset('public/assets/images/brand-logos/pmo-header.jpeg') }}" type="image/x-icon">

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{asset('public/plugins/fontawesome-free/css/all.min.css')}}">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="{{asset('public/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('public/dist/css/adminlte.min.css')}}">
</head>
<body class="hold-transition login-page" style="background: #94a6b6 !important">
<div class="container">
  <div class="row justify-content-center align-items-center h-100 mt-5 pt-2">
    <div class="col-xxl-5 col-xl-5 col-lg-5 col-md-6 col-sm-8 col-12 mt-5">
      <div class="card mt-5">
        <div class="card-body login-card-body">
          <div class="login-logo mb-4">
            <span>
              @php
                use App\Models\OrganizationLogo;
                $organizationLogo = OrganizationLogo::first();
              @endphp
              
              @if($organizationLogo && $organizationLogo->org_logo)
                <img src="{{ asset('/public/organizationlogo/' . $organizationLogo->org_logo) }}" alt="logo"  height="100" style="width: 163px;"/>
              @else
                <img src="{{ asset('public/userprofile/1721712361_general_public.jpg') }}" alt="Default Logo" class="sidebar-logo" height="50"/>
              @endif
            </span>  
          </div>
          {{-- <p class="login-box-msg"><strong>Sign In</strong></p> --}}
          <p class="mb-4 text-center">Enter your e-mail address below to reset your password.</p>
          <div class="col-12">
            @if (Session::has('success'))
                <div class="alert alert-success alert-dismissible fs-15 fade show mb-4">
                    {{ session('success') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif
            @if ($errors->any())
                <div class="alert alert-danger alert-dismissible fs-15 fade show mb-4">
                  @foreach ($errors->all() as $error)
                    <p>{{ $error }}</p>
                  @endforeach
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
            @endif
          </div> 
          <form method="POST" action="{{ route('forgetpassword') }}" >
            @csrf
              <label for="email">Enter Email</label>
              <div class="input-group mb-3">
                <input name="email" class="form-control" placeholder="Email Address" type="email" required>
                <div class="input-group-append">
                  <div class="input-group-text">
                    <span class="fas fa-envelope"></span>
                  </div>
                </div>
              </div>
              {{-- <div class="form-group mb-4 mt-3">
                <label>Enter Email</label>
                <input name="email" class="form-control" placeholder="Email Address" type="email">
              </div> --}}
              <div class="row">
                <div class="col-12">
                  <button type="submit" class="btn btn-info btn-block">Send Mail</button>
                </div>
              </div>
          </form>
          <p class="mt-3 mb-1 text-center text-muted">Back to 
            <a class="text-mutde mx-2" href="{{route('indexlogin')}}"><b>Log In</b></a>
          </p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- jQuery -->
<script src="{{asset('public/plugins/jquery/jquery.min.js')}}"></script>
<!-- Bootstrap 4 -->
<script src="{{asset('public/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{asset('public/dist/js/adminlte.min.js')}}"></script>

</body>
</html>
