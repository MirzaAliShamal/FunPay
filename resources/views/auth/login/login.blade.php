@extends('layouts.frontend.app')

@section('content')
            <section id="content-body">
                <div class="search-fade"></div>
                <div id="content" class="content-account content-account-login">
                    <div class="page-content modal-auth modal-sm center-block">
                        <div class="modal-content bg-light-color bg-light-style">
                            <div class="modal-body">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="{{route('user.seller.login')}}">Log In</a></li>
                                    <li><a href="{{route('buyer.register')}}">Sign Up</a></li>
                                </ul>
                                <form method="POST" action="{{ route('login.post') }}">
                                    @csrf
                                    @if(session('success'))
                                    <div class="alert alert-success">
                                        {{ session('success') }}
                                    </div>
                                    @endif
                                    @if(session('error'))
                                    <div class="alert alert-danger">
                                        {{ session('error') }}
                                    </div>
                                    @endif
                                   

                                    <div class="form-group">
                                        <label class="control-label">Login as:</label>
                                        <div class="switch">
                                            <input type="radio" id="seller" name="user_type" value="seller"
                                                onchange="toggleUserType()">
                                            <label for="seller">Seller</label>
                                            <input type="radio" id="buyer" name="user_type" value="buyer"
                                                onchange="toggleUserType()">
                                            <label for="buyer">Buyer</label>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="text-light mb10">
                                            Or using a username, an email and a password:
                                        </div>
                                        <input type="text" class="form-control" name="email" value="{{ old('login') }}"
                                            required autofocus placeholder="Email address" />
                                        @error('email')
                                        <p class="help-block text-danger">{{ $message }}</p>
                                        @enderror
                                        <input type="password" class="form-control mt10" name="password" value=""
                                            required placeholder="Password" />
                                        @error('password')
                                        <p class="help-block text-danger">{{ $message }}</p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <a href="recover.html">Forgot your password?</a>
                                    </div>

                                    <a class="btn btn-block btn-social btn-foursquare text-white"
                                        style="background-color: #6441A5; color:white;">
                                        <span class="fa fa-twitch"></span> Sign in with Twitch
                                    </a>

                                    <a class="btn btn-block btn-social btn-foursquare text-white"
                                        style="background-color: #171A21; color:white;">
                                        <span class="fa fa-steam"></span> Sign in with Steam
                                    </a>

                                    <a class="btn btn-block btn-social btn-foursquare text-white"
                                        style="background-color: #3b5998; color:white;">
                                        <span class="fa fa-facebook"></span> Sign in with Facebook
                                    </a>
                                    <a class="btn btn-block btn-social btn-twitter text-white"
                                        style="background-color: #55acee; color:white;">
                                        <span class="fa fa-twitter"></span> Sign in with Twitter
                                    </a>
                                    <a class="btn btn-block btn-social btn-google text-white"
                                        style="background-color: #dd4b39; color:white;">
                                        <span class="fa fa-google"></span> Sign in with Google
                                    </a>

                                    <button type="submit" class="btn btn-primary btn-block">
                                        Log In
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <div class="wrapper-footer">
            <div class="container">
                <footer id="footer">
                    <div class="footer-block footer-block-strings">
                        <span>&copy; 2015&ndash;2024 FunPay</span>
                        <a href="../pages/privacyPolicy.html">Privacy Policy</a>
                        <a href="../pages/cookiePolicy.html">Cookie Policy</a>
                        <a href="https://funpay.freshdesk.com/en/support/tickets/new" target="_blank"
                            rel="nofollow">Submit a Request</a>
                    </div>
                    <div class="footer-block footer-block-social">
                        <a class="btn btn-gray btn-round" href="https://t.me/funpay_english" target="_blank"
                            rel="nofollow">
                            <svg width="25" height="20">
                                <use xlink:href="img/layout/sprites.svg#social-logo-telegram"></use>
                            </svg>
                        </a>
                        <a class="btn btn-gray btn-round" href="https://www.youtube.com/c/funpayofficial"
                            target="_blank" rel="nofollow"><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-gray btn-round" href="https://www.facebook.com/funpay.official"
                            target="_blank" rel="nofollow"><i class="fab fa-facebook-square"></i></a>
                    </div>
                    <div class="footer-block footer-block-als">
                        <img src="img/layout/als-logo.svg" alt="" />
                        <div>Designed<br />by <a href="https://www.artlebedev.com/funpay/" target="_blank">Art.
                                Lebedev<br />Studio</a></div>
                    </div>
                </footer>
            </div>
        </div>
    </div>
    <script src="{{ asset('public/bundle.js') }}"></script>
    <script>
    function toggleUserType() {
        // This function can be used to perform actions based on selected user type if needed
    }
    </script>
</body>

</html>

@endsection