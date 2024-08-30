<aside class="main-sidebar sidebar-dark-primary elevation-4">
 <div class="sidebar">
  <div class="main-sidebar-header mt-2">
   <a href="{{ route('admin.dashboard') }}" class="header-logo">
    <img src="{{ asset('public/userprofile/21.jpg') }}" alt="Default Logo" class="sidebar-logo mx-5 px-5" height="50" />
   </a>
  </div>
  <hr>
  <nav class="mt-2">
   <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

    <li class="nav-item mt-2">
     <a href="{{ route('admin.dashboard') }}" class="nav-link">
     <i class="nav-icon fas fa-tachometer-alt"></i>
      <p class="side-menu__label mx-2">Dashboard</p>
     </a>
    </li>
    <li class="nav-item mt-2">
     <a href="{{ route('admin.game') }}" class="nav-link">
     <i class="fa fa-gamepad"></i>
      <p class="side-menu__label mx-2">Games</p>
     </a>
    </li>
    <li class="nav-item mt-2">
     <a href="{{ route('admin.category.index') }}" class="nav-link">
      <i class="nav-icon fas fa-tachometer-alt"></i>
      <p class="side-menu__label mx-2">Category</p>
     </a>
    </li>
    <li class="nav-item mt-2">
     <a href="{{ route('admin.subcategory.index') }}" class="nav-link">
      <i class="nav-icon fas fa-tachometer-alt"></i>
      <p class="side-menu__label mx-2">Sub Category</p>
     </a>
    </li>

   </ul>
  </nav>
  <!-- /.sidebar-menu -->
 </div>
 <!-- /.sidebar -->
</aside>
