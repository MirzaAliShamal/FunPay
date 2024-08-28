<nav class="main-header navbar navbar-expand navbar-white navbar-light">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
    </li>
  </ul>
  <ul class="navbar-nav ml-auto">
    <li class="nav-item">
      <a class="nav-link" data-widget="fullscreen" href="#" role="button">
        <i class="fas fa-expand-arrows-alt"></i>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-widget="control-sidebar" data-controlsidebar-slide="true" href="#" role="button">
        <i class="fas fa-th-large"></i>
      </a>
    </li>
    <li class="nav-item dropdown mb-0">
      <a class="nav-link" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <div class="user-panel d-flex">
          <div class="image">
            <?php
            use App\Models\User;
            $user = auth()->user();
            $userProfile = User::where('employee_id', $user->employee_id)->first();
            ?>
            @if ($userProfile && $userProfile->profile_img)
                <img src="{{ asset('public/' . $userProfile->profile_img) }}" class="img-circle elevation-2" alt="User Image">
            @else
                <img src="{{ asset('public/userprofile/21.jpg') }}" class="img-circle elevation-2" alt="User Image">
            @endif  
          </div>
        </div>
      </a>
      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
        <a class="dropdown-item" href="{{ route('userprofile') }}">
          <i class="fas fa-user-circle mr-2"></i> Profile
        </a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item d-flex" href="{{ route('logoutuser') }}"><i class="fas fa-sign-out-alt mr-2"></i>Log Out</a>
      </div>
    </li>
  </ul>
</nav>