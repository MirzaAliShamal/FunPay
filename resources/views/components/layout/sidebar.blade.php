<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <div class="sidebar">
        <div class="main-sidebar-header mt-2">
            <a href="{{ route('admin.dashboard') }}" class="header-logo">
                <img src="{{ asset('public/userprofile/21.jpg') }}" alt="Default Logo" class="sidebar-logo mx-5 px-5"
                    height="50" />
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

                <li class="nav-item">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Setup
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">

                        <li class="nav-item">
                            <a href="{{route('admin.offer')}}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Offer Category</p>
                            </a>
                        </li>
                        <!-- <li class="nav-item">
                            <a href="{{route('admin.offertype')}}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Offer Type</p>
                            </a>
                        </li> -->

                        <li class="nav-item">
                            <a href="{{route('admin.offerfield')}}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Offer Field</p>
                            </a>
                        </li>

                    </ul>
                </li>

                <li class="nav-item mt-2">
                    <a href="{{ route('admin.category.index') }}" class="nav-link">
                        <i class="fas fa-list"></i>
                        <p class="side-menu__label mx-2">Category</p>
                    </a>
                </li>


                <li class="nav-item mt-2">
                    <a href="{{ route('filters.index') }}" class="nav-link">
                        <i class="fas fa-list"></i>
                        <p class="side-menu__label mx-2">Filters</p>
                    </a>
                </li>

                <li class="nav-item mt-2">
                    <a href="{{ route('admin.subcategory.index') }}" class="nav-link">
                        <i class="fas fa-code-branch"></i>
                        <p class="side-menu__label mx-2">Sub Category</p>
                    </a>
                </li>

                <!-- <li class="nav-item mt-2">
                    <a href="{{ route('admin.game') }}" class="nav-link">
                        <i class="fa fa-gamepad"></i>
                        <p class="side-menu__label mx-2">Games</p>
                    </a>
                </li> -->

                <li class="nav-item mt-2">
                    <a href="{{ route('admin.seller') }}" class="nav-link">
                         <i class="fa fa-user" aria-hidden="true"></i>
                        <p class="side-menu__label mx-2">Sellers</p>
                    </a>
                </li>

                <li class="nav-item mt-2">
                    <a href="{{ route('admin.buyer') }}" class="nav-link">
                         <i class="fa fa-user" aria-hidden="true"></i>
                        <p class="side-menu__label mx-2">Buyers</p>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
