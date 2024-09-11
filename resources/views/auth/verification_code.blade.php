
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Verification Code</title>

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
<body class="hold-transition login-page" style="background: #94a6b6  !important">
<div class="container">
  <div class="row row justify-content-center align-items-center h-100 mt-4">
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
        <p class="login-box-msg"><strong>Verify Your Account</strong></p>
        <p class="mb-4 text-muted op-7 fw-normal text-center">Enter the 4 digit code sent to the registered email Id.</p>
        <form id="twoStepsForm" method="POST" action="{{ route('verifycode') }}">
            @csrf
            <input type="hidden" name="unique_id" value="{{ $unique_id }}">
            <div class="row gy-3">
                <div class="col-12 mb-2">
                    <div class="row">
                        <div class="col-3">
                            <input type="text" class="form-control form-control-lg text-center"
                                id="one" maxlength="1" onkeyup="clickEvent(this,'two')"
                                name="digit1">
                        </div>
                        <div class="col-3">
                            <input type="text" class="form-control form-control-lg text-center"
                                id="two" maxlength="1" onkeyup="clickEvent(this,'three')"
                                name="digit2">
                        </div>
                        <div class="col-3">
                            <input type="text" class="form-control form-control-lg text-center"
                                id="three" maxlength="1" onkeyup="clickEvent(this,'four')"
                                name="digit3">
                        </div>
                        <div class="col-3">
                            <input type="text" class="form-control form-control-lg text-center"
                                id="four" maxlength="1" onkeyup="clickEvent(this,'five')"
                                name="digit4">
                        </div>
                    </div>
                </div>
                <div class="col-12 mt-3">
                    <button type="submit" class="btn btn-info btn-block">Verify</button>
                </div>
            </div>
        </form>
        <div class="text-center">
            <p class="fs-12 text-danger mt-3 mb-0"><sup><i class="ri-asterisk"></i>
            </sup>Do not share the verification code with anyone !</p>
        </div>
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
    document.addEventListener('DOMContentLoaded', function() {
        document.getElementById('twoStepsForm').addEventListener('submit', function(event) {
            var inputs = [
                document.querySelector('input[name="digit1"]').value,
                document.querySelector('input[name="digit2"]').value,
                document.querySelector('input[name="digit3"]').value,
                document.querySelector('input[name="digit4"]').value,
            ];

            var code = inputs.join('');

            if (code.length !== 4) {
                event.preventDefault();
                alert('Please enter a 4-digit verification code.');
                return;
            }

            var hiddenInput = document.createElement('input');
            hiddenInput.type = 'hidden';
            hiddenInput.name = 'authenticated_id';
            hiddenInput.value = code;
            this.appendChild(hiddenInput);
        });
    });

    function clickEvent(first, last) {
        if (first.value.length) {
            document.getElementById(last).focus();
        }
    }
</script>
</body>
</html>
