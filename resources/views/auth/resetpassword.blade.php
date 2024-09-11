<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Recover Password</title>

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
<body class="hold-transition login-page" style="background: #6c757d !important">
<div class="container">
  <div class="row row justify-content-center align-items-center h-100">
    <div class="col-xxl-5 col-xl-5 col-lg-5 col-md-6 col-sm-8 col-12 mt-5">
      <div class="card mt-5">
        <div class="card-body login-card-body">
          <div class="login-logo">
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
          <p class="login-box-msg">You are only one step away from your new password, recover your password now.</p>
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
          <form action="{{ route('changepassword') }}" method="POST" id="changePasswordForm">
            @csrf
            <input type="hidden" value="{{ $unique_id }}" name="id">
            <label for="reset-newpassword">New Password</label>
            <div class="input-group mb-3"> 
              <input type="password" name="new_password" class="form-control" id="reset-newpassword" placeholder="new password"> 
              <div class="input-group-append">
                <span class="input-group-text toggle-password" id="togglePassword">
                  <i class="fas fa-eye-slash"></i>
                </span>
              </div>
            </div>
            <label for="reset-confirmpassword">Confirm Password</label>
            <div class="input-group mb-3">
              <input type="password" name="new_password_confirmation" class="form-control" id="reset-confirmpassword" placeholder="confirm password">
              <div class="input-group-append">
                <span class="input-group-text toggle-password" id="togglePasswordConfirmation">
                  <i class="fas fa-eye-slash"></i>
                </span>
              </div> 
            </div>
            <div id="passwordError" class="alert alert-danger" style="display: none;">
              <ul>
                <li>Password must be at least 8 characters long.</li>
                <li>Include at least one uppercase letter.</li>
                <li>Include at least one number.</li>
                <li>Include at least one special character.</li>
              </ul>
            </div>
            @if ($errors->any())
              <div class="alert alert-danger">
                <ul>
                  @foreach ($errors->all() as $error)
                    <span>{{ $error }}</span>
                  @endforeach
                </ul>
              </div>
            @endif
            <div class="row">
              <div class="col-12">
                <button type="submit" class="btn btn-primary btn-block">Change password</button>
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
<script>
  document.getElementById('togglePassword').addEventListener('click', function () {
      var passwordField = document.getElementById('reset-newpassword');
      var passwordIcon = this.querySelector('i');
      if (passwordField.type === 'password') {
          passwordField.type = 'text';
          passwordIcon.classList.remove('fa-eye-slash');
          passwordIcon.classList.add('fa-eye');
      } else {
          passwordField.type = 'password';
          passwordIcon.classList.remove('fa-eye');
          passwordIcon.classList.add('fa-eye-slash');
      }
  });

  document.getElementById('togglePasswordConfirmation').addEventListener('click', function () {
      var confirmPasswordField = document.getElementById('reset-confirmpassword');
      var confirmPasswordIcon = this.querySelector('i');
      if (confirmPasswordField.type === 'password') {
          confirmPasswordField.type = 'text';
          confirmPasswordIcon.classList.remove('fa-eye-slash');
          confirmPasswordIcon.classList.add('fa-eye');
      } else {
          confirmPasswordField.type = 'password';
          confirmPasswordIcon.classList.remove('fa-eye');
          confirmPasswordIcon.classList.add('fa-eye-slash');
      }
  });

  document.getElementById('changePasswordForm').addEventListener('submit', function(event) {
      const newPassword = document.getElementById('reset-newpassword').value;
      const confirmPassword = document.getElementById('reset-confirmpassword').value;
      const passwordError = document.getElementById('passwordError');

      const hasUppercase = /[A-Z]/.test(newPassword);
      const hasNumber = /[0-9]/.test(newPassword);
      const hasSpecial = /[\W_]/.test(newPassword);
      const isValidLength = newPassword.length >= 8;
      if (!hasUppercase || !hasNumber || !hasSpecial || !isValidLength || newPassword !== confirmPassword) {
          event.preventDefault();
          let errors = [];
          if (!isValidLength) errors.push('Password must be at least 8 characters long.');
          if (!hasUppercase) errors.push('Include at least one uppercase letter.');
          if (!hasNumber) errors.push('Include at least one number.');
          if (!hasSpecial) errors.push('Include at least one special character.');
          if (newPassword !== confirmPassword) errors.push('Passwords do not match.');
          passwordError.innerHTML = '<ul>' + errors.map(e => '<li>' + e + '</li>').join('') + '</ul>';
          passwordError.style.display = 'block';
      } else {
          passwordError.style.display = 'none';
      }
  });
</script>
</body>
</html>
