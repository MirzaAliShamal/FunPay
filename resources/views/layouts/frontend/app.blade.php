<!DOCTYPE html>
<html lang="en">
  <!-- Mirrored from funpay.com/en/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Aug 2024 11:47:24 GMT -->
  <!-- Added by HTTrack --><meta
    http-equiv="content-type"
    content="text/html;charset=utf-8"
  /><!-- /Added by HTTrack -->
  <head>
    <meta charset="utf-8" />
    <title>FunPay — Marketplace for Gamers</title>
    <link href="{{asset('public/assets/frontend/assets/css/main.css')}}" rel="stylesheet" media="all" />
    <script src="{{asset('public/assets/frontend/assets/js/bundle.js')}}"></script>
    <meta
      name="description"
      content="On the secure FunPay marketplace, you can buy game currencies, accounts, items, skins and boosting services. Gamers can also place these for sale."
    />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
    <link
      rel="preload"
      href="{{asset('public/assets/frontend/681/fonts/Graphik-Bold-Web.woff2')}}"
      as="font"
      type="font/woff2"
      crossorigin
    />
    <link
      rel="preload"
      href="{{asset('public/assets/frontend/681/fonts/Graphik-Semibold-Web.woff2')}}"
      as="font"
      type="font/woff2"
      crossorigin
    />
  </head>
  <body>
    <div class="wrapper">
      <div class="wrapper-content">

        <x-frontend.header/>
            @yield('content')
        <x-frontend.footer/>


      </div>
    </div>

    @yield('script')

    </body>

</html>
