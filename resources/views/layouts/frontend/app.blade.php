<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<head>
 <meta charset="utf-8" />
 <title>FunPay — Marketplace for Gamers</title>
 <meta name="csrf-token" content="{{ csrf_token() }}">
 <link href="{{ asset('public/assets/frontend/assets/css/main.css') }}" rel="stylesheet" media="all" />
 <script src="{{ asset('public/assets/frontend/assets/js/bundle.js') }}"></script>
 <meta name="description"
  content="On the secure FunPay marketplace, you can buy game currencies, accounts, items, skins and boosting services. Gamers can also place these for sale." />
 <meta name="viewport" content="width=device-width, initial-scale=1" />

 <link rel="preload" href="{{ asset('public/assets/frontend/681/fonts/Graphik-Bold-Web.woff2') }}" as="font"
  type="font/woff2" crossorigin />
 <link rel="preload" href="{{ asset('public/assets/frontend/681/fonts/Graphik-Semibold-Web.woff2') }}" as="font"
  type="font/woff2" crossorigin />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

  <style>
    .rating-container {
    display: flex;
    align-items: center;
}

.star {
    font-size: 20px; /* Adjust as needed */
    color: gold; /* Change to your preferred color */
}
.rating i {
    color: gold; /* Star color */
}

.review-card {
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 15px;
    margin: 10px 0;
}

.submit-review-btn {
    background-color: #007bff; /* Bootstrap primary color */
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.submit-review-btn:hover {
    background-color: #0056b3; /* Darker shade on hover */
}

  </style>
</head>

<body>
 <div class="wrapper">
  <div class="wrapper-content">

   <x-frontend.header />
   @yield('content')
   <x-frontend.footer />


  </div>
 </div>

 @yield('script')

</body>

</html>
