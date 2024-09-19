<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>@yield('title')</title>
    <link href="https://funpay.com/681/css/main.css" rel="stylesheet" media="all">
    <script src="https://funpay.com/496/js/bundle.js"></script>
    <script src="https://funpay.com/496/js/lots.min.js"></script>
    <script src="https://funpay.com/496/js/tablesort.min.js"></script>
    <meta name="description"
        content="FunPay is a digital marketplace of the virtual game property where you can buy AFK Arena account without intermediaries at the lowest prices. We make sure all trades are safe and secure.">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script type="application/ld+json">
    [{
        "@context": "http:\/\/schema.org\/",
        "@type": "BreadcrumbList",
        "itemListElement": [{
            "@type": "ListItem",
            "position": 1,
            "name": "AFK Arena",
            "item": {
                "name": "AFK Arena"
            }
        }, {
            "@type": "ListItem",
            "position": 2,
            "name": "Accounts",
            "item": {
                "name": "Accounts"
            }
        }]
    }, {
        "@context": "http:\/\/schema.org\/",
        "@type": "WebSite",
        "name": "FunPay",
        "url": "https:\/\/funpay.com\/en\/"
    }]
    </script>
    <link rel="preload" href="/681/fonts/Graphik-Bold-Web.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="/681/fonts/Graphik-Semibold-Web.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="manifest" href="/manifest.json">

    @yield('style')
</head>

<body
    data-app-data="{&quot;locale&quot;:&quot;en&quot;,&quot;csrf-token&quot;:&quot;z5upfwm009jctnyp&quot;,&quot;userId&quot;:0}">
    <!--suppress ALL -->

    <script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }

    gtag('consent', 'default', {
        "analytics_storage": "granted",
        "ad_storage": "granted",
        "ad_user_data": "granted",
        "ad_personalization": "denied"
    });
    gtag('config', 'AW-11153904331');

    window.app.analytics.addEvents([{
        "event": "FunpayPageview",
        "userId": "",
        "clientId": "805205103.1724713103"
    }]);
    </script>

    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TWG83B" height="0" width="0"
            style="display:none;visibility:hidden"></iframe></noscript>
    <script>
    (function(w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({
            'gtm.start': new Date().getTime(),
            event: 'gtm.js'
        });
        var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s),
            dl = l != 'dataLayer' ? '&l=' + l : '';
        j.async = true;
        j.src =
            'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
        f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-TWG83B');
    </script>

    <script type="text/javascript">
    (function(m, e, t, r, i, k, a) {
        m[i] = m[i] || function() {
            (m[i].a = m[i].a || []).push(arguments)
        };
        m[i].l = 1 * new Date();
        k = e.createElement(t), a = e.getElementsByTagName(t)[0], k.async = 1, k.src = r, a.parentNode.insertBefore(
            k, a)
    })
    (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

    function initYM() {
        ym(36956765, "init", {
            clickmap: false,
            trackLinks: true,
            accurateTrackBounce: true,
            webvisor: false,
            ut: "noindex",
            ecommerce: "dataLayer"
        });
    }
    initYM();
    </script>
    <noscript>
        <div><img src="{{asset('https://mc.yandex.ru/watch/36956765?ut=noindex')}}"
                style="position:absolute; left:-9999px;" alt="" /></div>
    </noscript>
    <div class="wrapper">
        <div class="wrapper-content">
            <header id="header">
                <div class="container">
                    <div id="global-origin"></div>
                    <nav class="navbar navbar-default">
                        <div class="hide-navbar"></div>
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <button type="button" class="collapsed navbar-toggle navbar-toggle-guest"
                                    data-toggle="collapse" data-target="#navbar" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a href="{{route('homepage')}}" class="navbar-brand">
                                    <img src="https://funpay.com/img/layout/logo-funpay.svg" alt="FunPay"
                                        class="logo-color" />
                                </a>
                                <form action="https://funpay.com/en/games/promoFilter" method="post"
                                    class="navbar-form navbar-left dropdown promo-games-filter">
                                    <div class="form-group">
                                        <input type="text" name="query" class="form-control dropdown-toggle"
                                            data-toggle="dropdown" role="searchbox" placeholder="Search by 537 games"
                                            autocomplete="off" />
                                        <div class="dropdown-menu dropdown-autocomplete hidden"></div>
                                    </div>
                                    <button type="submit" class="btn btn-link"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                            <div class="nav-container">
                                <div class="collapse navbar-collapse no-transition" id="navbar">
                                    <ul class="nav navbar-nav">
                                        <li class="dropdown"><a href="https://funpay.com/en/"
                                                class="menu-item-info dropdown-toggle" data-toggle="dropdown"
                                                role="button" aria-haspopup="true" aria-expanded="false">Support <span
                                                    class="caret"></span></a>
                                            <ul class="dropdown-menu">
                                                <li><a href="https://funpay.com/en/trade/info"
                                                        class="menu-item-trade_info">Rules</a></li>
                                                <li><a href="https://funpay.freshdesk.com/en/support/home"
                                                        class="menu-item-support" target="_blank">Support Center</a>
                                                </li>
                                                <li><a href="https://funpay.freshdesk.com/en/support/tickets/new"
                                                        class="menu-item-request" target="_blank">Submit a Request</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="https://forms.gle/PNULY9gcB7QGvtW67" class="menu-item-resellers"
                                                target="_blank">For Resellers</a></li>
                                    </ul>
                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="{{route('user.seller.login')}}" class="menu-item-login">Log In</a>
                                        </li>
                                        <li><a href="{{route('buyer.register')}}" class="menu-item-register">Sign Up</a>
                                        </li>
                                        <li><a href="{{route('seller.register')}}" class="menu-item-register">Sign Up as
                                                Seller</a></li>
                                        <li class="dropdown">
                                            <a href="javascript:void(0)" class="dropdown-toggle menu-item-langs"
                                                data-toggle="dropdown">
                                                English <i class="menu-icon menu-icon-lang-en"></i> <span
                                                    class="caret"></span>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="https://funpay.com/en/lots/791/?setlocale=ru"
                                                        class="menu-item-lang">
                                                        По-русски <i class="menu-icon menu-icon-lang-ru"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="https://funpay.com/en/lots/791/?setlocale=uk"
                                                        class="menu-item-lang">
                                                        Українською <i class="menu-icon menu-icon-lang-uk"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="dropdown">
                                            <a href="javascript:void(0)" class="dropdown-toggle menu-item-currencies"
                                                data-toggle="dropdown">
                                                USD <span class="caret"></span>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="javascript:void(0)" data-cy="eur"
                                                        class="user-cy-switcher menu-item-currency">
                                                        EUR </a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>
            </header>

            <section id="content-body">
                <div class="search-fade"></div>
                <div id="content" class="content-lots content-lots-node">
                    <div class="promo-cd">


                        <div class="page-content-full pb0">
                            <div class="container">
                                <div class="content-with-cd">
                                    <div>
                                        <h1>{{$subcategory->category->name}} - {{$subcategory->name}}</h1>

                                        <div class="block-info">
                                            <p>FunPay is a player-to-player marketplace where you can buy AFK Arena
                                                account at the best price. All trades are safe and secure due to
                                                transactions protection – sellers receive their payment once they
                                                fulfill the customer’s order. Users are allowed to sell only legally
                                                obtained accounts.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="cd-container">
                            <div class="cd">
                                <div class="spacer"></div>
                                <img src="{{asset('https://sfunpay.com/s/file/5c/uj/afk_arena.5cujrn82vg.jpg')}}"
                                    alt="">
                                <!--noindex--> <svg viewBox="0 0 200 200">
                                    <defs>
                                        <path id="text_path" d="M 10, 100 a 90,90 0 1,0 180,0 a 90,90 0 1,0 -180,0" />
                                    </defs>
                                    <g class="text-main" font-size="14px">
                                        <text text-anchor="end" class="no-select">
                                            <textPath xlink:href="#text_path" startOffset="100%">AFK Arena</textPath>
                                        </text>
                                    </g>
                                    <g font-size="4.5px">
                                        <text text-anchor="start" class="no-select">
                                            <textPath xlink:href="#text_path" startOffset="1%">Accounts&nbsp;
                                                Diamonds&nbsp; Top Up&nbsp; Services&nbsp; Other</textPath>
                                        </text>
                                    </g>
                                </svg>
                                <!--/noindex-->
                            </div>
                        </div>

                        <div class="container">
                            <div class="cd-forward">
                                <div class="counter-list counter-list-circles">


                                    @foreach ($category->subCategories as $subcat)
                                    <a href="{{ route('subcatpage', $subcat->slug) }}"
                                        class="counter-item {{ $subcat->name === $subcategory->name ? 'active' : '' }}"
                                        style="width: 110px; height: 110px;">
                                        <div class="inside">
                                            <div class="counter-param">{{ $subcat->name }}</div>
                                            <div class="counter-value">155</div>
                                        </div>
                                    </a>
                                    @endforeach
                                </div>


                                @yield('content')





                                {{-- <p class="lead showcase-empty margin-top pb20 hidden">No offers.</p>
                                    <!--/noindex-->
                                </div>
                            </div>
                            <div>
                                <div class="content-with-cd-wide tbl-footer">
                                    <div class="game-about">
                                        <div class="block-info">
                                            <p>AFK Arena is a casual action card game. It is a CCG (collectible card game) mixed with RPG (role-playing game) elements. Enter the beautiful world of Esperia, go through battle phases and defeat your enemies. Heroes are divided into 6 different factions; each of them has unique abilities and its own equipment, which gives room for strategy development. Choose a set of heroes, their abilities, and faction bonuses to defeat the army of evil. Every single action, no matter how minor, is rewarded generously. Join players all over the world in this journey of fantasy and prevent an ancient evil from destroying the realm of Esperia.</p>
                                            <p>FunPay can help you get the strongest AFK Arena heroes. FunPay is the biggest marketplace where you can buy AFK Arena account without intermediaries. All transactions are secured and customers are fully protected from payment fraud. The buyer’s funds are frozen until the seller fulfills his obligations. The buyer confirms the payment only after receiving and checking the account data. But this isn’t our only advantage! Here are the benefits of using FunPay: free market, wide range of offers and payment methods, user-friendly interface, fast order fulfillment, regularly updated items/services range and the above-mentioned transaction protection.</p>
                                            <h2>How to buy AFK Arena account:</h2>
                                            <p>Choose an offer you like. The seller performance evaluation system will help you: feedback can show the reliability of a seller.</p>
                                            <ol>
                                                <li>Find AFK Arena account for sale. Select an offer by clicking on it and go to the checkout page.</li>
                                                <li>Contact a seller via order chat to discuss all the details. </li>
                                                <li>Choose a payment method and click “Pay”.</li>
                                            </ol>
                                            <p>Once the transaction is confirmed, the seller will see that the order has been paid and will give access to the account. After checking the account data, the buyer completes the transaction by clicking on the appropriate button. Then the funds that were frozen are transferred to the seller.</p>
                                            <h3>For sellers</h3>
                                            <p>If you are tired of playing or you can level heroes fast, then you can sell your AFK Arena account on our marketplace. In order to do this, you should sign up as a seller. Read the rules and take a brief test on whether you know it. Then you can post your offer.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>





                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
 --}}







                                {{-- footer starting from heree --}}
                                <div class="wrapper-footer">
                                    <div class="container">
                                        <footer id="footer">
                                            <div class="footer-block footer-block-strings">
                                                <span>&copy; 2015&ndash;2024 FunPay</span>
                                                <a href="https://funpay.com/en/pages/privacyPolicy">Privacy Policy</a>
                                                <a href="https://funpay.com/en/pages/cookiePolicy">Cookie Policy</a> <a
                                                    href="https://funpay.com/en/pages/refundPolicy">Refund and
                                                    Cancellation Policy</a> <a
                                                    href="https://funpay.com/en/information.html">Contact Us</a> <a
                                                    href="https://funpay.freshdesk.com/en/support/tickets/new"
                                                    target="_blank" rel="nofollow">Submit a Request</a>
                                            </div>
                                            <div class="footer-block footer-block-social">
                                                <a class="btn btn-gray btn-round" href="https://t.me/funpay_english"
                                                    target="_blank" rel="nofollow">
                                                    <svg width="25" height="20">
                                                        <use
                                                            xlink:href="/1/img/layout/sprites.svg#social-logo-telegram">
                                                        </use>
                                                    </svg> </a>
                                                <a class="btn btn-gray btn-round"
                                                    href="https://www.youtube.com/c/funpayofficial" target="_blank"
                                                    rel="nofollow"><i class="fab fa-youtube"></i></a>
                                                <a class="btn btn-gray btn-round"
                                                    href="https://www.facebook.com/funpay.official" target="_blank"
                                                    rel="nofollow"><i class="fab fa-facebook-square"></i></a>
                                            </div>
                                            <div class="footer-block footer-block-als">
                                                <img src="https://funpay.com/img/layout/als-logo.svg" alt="">
                                                <div>Designed<br>by <a href="https://www.artlebedev.com/funpay/"
                                                        target="_blank">Art. Lebedev<br>Studio</a></div>
                                            </div>
                                        </footer>
                                    </div>
                                </div>
                            </div>
                            @yield('script')

</body>

</html>