<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Log in</title>

  <link rel="icon" href="{{ asset('public/assets/images/brand-logos/favicon.ico') }}" type="image/x-icon">
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
  <div class="row justify-content-center align-items-center h-100 mt-4">
    <div class="col-xxl-5 col-xl-5 col-lg-5 col-md-6 col-sm-8 col-12 mt-5">
      <div class="card mt-5">
        <div class="card-body login-card-body">
          <div class="login-logo mb-4">
            
              @php
                use App\Models\OrganizationLogo;
                $organizationLogo = OrganizationLogo::first();
              @endphp
              
              @if($organizationLogo && $organizationLogo->org_logo)
                <img src="{{ asset('/public/organizationlogo/' . $organizationLogo->org_logo) }}" alt="logo"  height="100" style="width: 163px;"/>
              @else
                <img src="{{ asset('public/userprofile/1721712361_general_public.jpg') }}" alt="Default Logo" class="sidebar-logo" height="50"/>
              @endif
          </div>
          {{-- <p class="login-box-msg"><strong>Sign In</strong></p> --}}
          <p class="mb-4 text-center">sign in with your email & password.</p>
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
          <form action="{{ route('userlogin') }}" method="POST">
            @csrf
            <p for="email">Email</p>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="email" name="email" value="{{ old('email') }}" placeholder="Enter your email" required />
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-envelope"></span>
                </div>
              </div>
            </div>
           
            <div class="input-group mb-4">
              <input id="password" type="password" class="form-control" name="password" placeholder="Password" required />
              <div class="input-group-append">
                <span class="input-group-text" id="togglePasswordConfirmation">
                  <i class="fas fa-eye-slash"></i>
                </span>
              </div>
            </div>
            <div class="row">
              
              <div class="col-3">
                <button type="submit" class="btn btn-info btn-block">Sign In</button>
              </div>
            </div>
          </form>
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
<script>
  document.addEventListener('DOMContentLoaded', function () {
    const togglePassword = document.querySelector('#togglePasswordConfirmation');
    const passwordField = document.querySelector('#password');
    
    togglePassword.addEventListener('click', function () {
      // Toggle the type attribute using a ternary operator
      const type = passwordField.type === 'password' ? 'text' : 'password';
      passwordField.type = type;
      
      // Toggle the eye icon
      this.querySelector('i').classList.toggle('fa-eye');
      this.querySelector('i').classList.toggle('fa-eye-slash');
    });
  });
</script>
</body>
</html>
