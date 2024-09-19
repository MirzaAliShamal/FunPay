<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Sign Up / FunPay</title>
    <link href="{{ asset('public/main.css') }}" rel="stylesheet" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

    <header id="header">
        <div class="container">
            @if(session('success'))
                <div class="alert alert-success">
                    {{ session('success') }}
                </div>
            @endif
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="collapsed navbar-toggle navbar-toggle-guest" data-toggle="collapse" data-target="#navbar" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="../index.html" class="navbar-brand">
                            <img src="https://funpay.com/img/layout/logo-funpay.svg" alt="FunPay" class="logo-color"/>
                        </a>
                    </div>
                    <div class="nav-container">
                        <div class="collapse navbar-collapse no-transition" id="navbar">
                            <ul class="nav navbar-nav">
                                <li class="dropdown"><a href="../index.html" class="menu-item-info dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Support <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="../trade/info.html" class="menu-item-trade_info">Rules</a></li>
                                        <li><a href="https://funpay.freshdesk.com/en/support/home" class="menu-item-support" target="_blank">Support Center</a></li>
                                        <li><a href="https://funpay.freshdesk.com/en/support/tickets/new" class="menu-item-request" target="_blank">Submit a Request</a></li>
                                    </ul>
                                </li>
                                <li><a href="https://forms.gle/PNULY9gcB7QGvtW67" class="menu-item-resellers" target="_blank">For Resellers</a></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="{{route('user.seller.login')}}" class="menu-item-login">Log In</a></li>
                                <li><a href="{{ route('buyer.register') }}" class="menu-item-register">Sign Up</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>

    <section id="content-body">
        <div class="search-fade"></div>
        <div id="content" class="content-account content-account-register">
            <div class="page-content modal-auth modal-sm center-block">
                <div class="modal-content bg-light-color bg-light-style">
                    <div class="modal-body">
                        <ul class="nav nav-tabs">
                            <li><a href="{{route('user.seller.login')}}">Log In</a></li>
                            <li class="active"><a href="{{ route('buyer.register') }}">Sign Up</a></li>
                        </ul>


                        <form method="POST" class="form" action="{{ route('buyer.store') }}">
                            @csrf
                            <div class="form-group">
                                <div class="text-light mb10">Via social network:</div>
                                <div class="social-login">
                                    <a href="login7baf.html?gate=vk" class="social-login-item social-vk"><i class="fab fa-vk"></i></a>
                                </div>
                            </div>
                            <ul class="form-messages text-danger">
                                @if ($errors->any())
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                @endif
                            </ul>
                            <div class="form-group">
                                <div class="text-light mb10">Or using a username, an email and a password:</div>
                                <input type="text" class="form-control" name="name" autofocus placeholder="Name or username" value="{{ old('name') }}">
                                @error('name')
                                    <p class="help-block text-danger">{{ $message }}</p>
                                @enderror
                                <p class="help-block">Latin letters and numbers</p>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="email" inputmode="email" placeholder="Email address" value="{{ old('email') }}">
                                @error('email')
                                    <p class="help-block text-danger">{{ $message }}</p>
                                @enderror
                                <p class="help-block">Required for account activation</p>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" name="password" autocomplete="off" placeholder="Password">
                                @error('password')
                                    <p class="help-block text-danger">{{ $message }}</p>
                                @enderror
                                <p class="help-block">At least 6 characters</p>
                            </div>

                            <button type="submit" class="btn btn-primary btn-block">Sign Up</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="wrapper-footer">
        <div class="container">
            <footer id="footer">
                <div class="footer-block footer-block-strings">
                    <span>&copy; 2015&ndash;2024 FunPay</span>
                    <a href="../pages/privacyPolicy.html">Privacy Policy</a>
                    <a href="../pages/cookiePolicy.html">Cookie Policy</a>
                    <a href="https://funpay.freshdesk.com/en/support/tickets/new" target="_blank" rel="nofollow">Submit a Request</a>
                </div>
                <div class="footer-block footer-block-social">
                    <a class="btn btn-gray btn-round" href="https://t.me/funpay_english" target="_blank" rel="nofollow">
                        <svg width="25" height="20"><use xlink:href="../../1/img/layout/sprites.svg#social-logo-telegram"></use></svg>
                    </a>
                    <a class="btn btn-gray btn-round" href="https://www.youtube.com/c/funpayofficial" target="_blank" rel="nofollow"><i class="fab fa-youtube"></i></a>
                    <a class="btn btn-gray btn-round" href="https://www.facebook.com/funpay.official" target="_blank" rel="nofollow"><i class="fab fa-facebook-square"></i></a>
                </div>
                <div class="footer-block footer-block-als">
                    <img src="../../img/layout/als-logo.svg" alt="">
                    <div>Designed<br>by <a href="https://www.artlebedev.com/funpay/" target="_blank">Art. Lebedev<br>Studio</a></div>
                </div>
            </footer>
        </div>
    </div>
    <script src="{{ asset('public/bundle.js') }}"></script>
</body>
</html>
