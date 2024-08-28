<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <div class="sidebar">
    <div class="main-sidebar-header mt-2">
      <a href="{{ route('dashboard') }}" class="header-logo">
        @php
          use App\Models\OrganizationLogo;
          $organizationLogo = OrganizationLogo::first();
        @endphp

        @if($organizationLogo && $organizationLogo->org_logo)
          <img src="{{ asset('public/organizationlogo/' . $organizationLogo->org_logo) }}" alt="logo" class="desktop-dark mx-4" height="100" style="width: 163px;"/>
        @else
          <img src="{{ asset('public/userprofile/21.jpg') }}" alt="Default Logo" class="sidebar-logo mx-5 px-5" height="50"/>
        @endif
      </a>
    </div>
    <hr>
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
       
     
                <li class="nav-item mt-2">
                  <a href="{{route('dashboard')}}" class="nav-link">
                    <i class="side-menu__icon"></i>
                    <p class="side-menu__label mx-2"> Dashboard
                    </p>
                  </a>
                 
              </li>

              <li class="nav-item mt-2">
                  <a href="" class="nav-link">
                    <i class="side-menu__icon"></i>
                    <p class="side-menu__label mx-2"> Organization
                      <i class="right fas fa-angle-left"></i>
                    </p>
                  </a>
                  <ul class="nav nav-treeview">
                  
                    <li class="nav-item">

                        <a href="{{route('managelogo')}}" class="nav-link">
                          <i class=""></i>
                          <p class="side-menu__label mx-2">Organization Logo</p>
                        </a>
                    </li>
               
                  </ul>
              </li>
            
      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>
