@extends('layouts.frontend.app')

@section('content')

<section id="content-body">
    <div class="search-fade"></div>
    <div id="content" class="content-users content-users-user">

        <div class="container profile-header">
            <div class="profile-cover">
                <div class="avatar">
                    <div class="avatar-photo" style="
                      background-image: url(https://sfunpay.com/s/avatar/5o/w6/5ow69mlhqlvt6fjhlzdy.jpg);
                    "></div>
                </div>
                <div class="profile-cover-container">
                    <div class="profile-cover-img"></div>
                </div>
            </div>
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
            <div class="profile">
                <h1 class="mb40 online">
                    <span class="mr4">tifa69</span>
                    <span class="media-user-status"> Online<br /> </span>

                </h1>

                <div class="profile-header-cols">
                    <div class="param-item">
                        <h5 class="text-bold">Registration date</h5>
                        <div class="text-nowrap">
                            14 April, 18:57<br />
                            5 months ago
                        </div>
                        <!-- <a width="100px" href="{{route('stripe.account.connection')}}"
                            class="mt-5 btn btn-primary btn-block">
                            Connect Stripe
                        </a> -->
                    </div>

                    <div class="param-item profile-header-col-rating">
                        <h5 class="text-bold">Seller's rating</h5>
                        <div class="rating-value text-nowrap inline-block-vat mr10">
                            <span class="big">5</span>
                            <span class="inline-block-vat">out of 5</span>
                        </div>
                        <div class="rating-full inline-block-vat">
                            <div class="rating-full-item5">
                                <div class="rating-mini"></div>
                                <div class="rating-progress">
                                    <div style="width: 100%"></div>
                                </div>
                            </div>
                            <div class="rating-full-item4">
                                <div class="rating-mini"></div>
                                <div class="rating-progress">
                                    <div style="width: 0%"></div>
                                </div>
                            </div>
                            <div class="rating-full-item3">
                                <div class="rating-mini"></div>
                                <div class="rating-progress">
                                    <div style="width: 0%"></div>
                                </div>
                            </div>
                            <div class="rating-full-item2">
                                <div class="rating-mini"></div>
                                <div class="rating-progress">
                                    <div style="width: 0%"></div>
                                </div>
                            </div>
                            <div class="rating-full-item1">
                                <div class="rating-mini"></div>
                                <div class="rating-progress">
                                    <div style="width: 0%"></div>
                                </div>
                            </div>
                        </div>
                        <div class="rating-full-count">
                            <a href="https://funpay.com/en/users/10714100/#reviews">35 reviews<br />
                                total</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bg-light-color">
            <div class="container">
                <div class="mt20">
                    <div class="row row-10 profile-container">
                        <div class="col-md-7 profile-data-container">
                            <div class="mb20">
                                <h5 class="mb10 text-bold">Offers</h5>
                                <div class="offer">
                                    <div class="offer-list-title-container">
                                        <div class="offer-list-title">
                                            <h3>
                                                <a href="https://funpay.com/en/lots/33/">Black Desert Accounts (EU,
                                                    US)</a>
                                            </h3>
                                        </div>
                                    </div>
                                    <div class="offer-tc-container">
                                        <!--noindex-->
                                        <div class="tc table-hover table-clickable tc-short showcase-table tc-sortable"
                                            data-section-type="lot">
                                            <div class="tc-header">
                                                <div class="tc-server hidden-xs">Server</div>
                                                <div class="tc-desc">Description</div>
                                                <div class="tc-price sort" data-sort-field="tc-price"
                                                    data-sort-type="num">
                                                    Price <i class="fa"></i>
                                                </div>
                                            </div>

                                            <a href="https://funpay.com/en/lots/offer?id=31842176" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        310/309/410 description, 63 level, Maehwa
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="697.942379">
                                                    <div>697.94 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                        </div>
                                        <!--/noindex-->
                                    </div>
                                </div>
                                <div class="offer">
                                    <div class="offer-list-title-container">
                                        <div class="offer-list-title">
                                            <h3>
                                                <a href="https://funpay.com/en/lots/136/">Black Desert Boosting (EU,
                                                    US)</a>
                                            </h3>
                                        </div>
                                    </div>
                                    <div class="offer-tc-container">
                                        <!--noindex-->
                                        <div class="tc table-hover table-clickable tc-short showcase-table tc-sortable"
                                            data-section-type="lot">
                                            <div class="tc-header">
                                                <div class="tc-server hidden-xs">Server</div>
                                                <div class="tc-desc">Description</div>
                                                <div class="tc-price sort" data-sort-field="tc-price"
                                                    data-sort-type="num">
                                                    Price <i class="fa"></i>
                                                </div>
                                            </div>

                                            <a href="https://funpay.com/en/lots/offer?id=29082268" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Energy boost price per 10 energy, Power
                                                        leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="2.139918">
                                                    <div>2.14 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28760191" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        The Mountain of Eternal Winter questline
                                                        full, Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="4.279835">
                                                    <div>4.28 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28759768" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Magnus Questline, Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="6.954732">
                                                    <div>6.95 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28553443" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        10 hours grinding any spot from ur choice,
                                                        Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="17.119341">
                                                    <div>17.12 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508691" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Leveling levels from 1 to 58 1 hours ( Stand
                                                        next to me afk ), Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="3.209877">
                                                    <div>3.21 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508669" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Leveling from 1 to 56 ( Stand next to me afk
                                                        ), Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="1.81893">
                                                    <div>1.82 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508654" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Leveling levels from 1 to 60 ( Stand next to
                                                        me afk ), Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="5.991769">
                                                    <div>5.99 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508625" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Igor Bartali&#039;s Adventures, Power
                                                        leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="30.065843">
                                                    <div>30.07 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508616" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Shakatu Merchants&#039; Archive, Power
                                                        leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="4.279835">
                                                    <div>4.28 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508601" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Boost to 61 LVL+Full SEASON PASS
                                                        Completion+Boost to MAX — Tuvala
                                                        Armor+Weapon, Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="14.979424">
                                                    <div>14.98 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508584" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Leveling 1 - 61 powerleveling, Power
                                                        leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="8.024691">
                                                    <div>8.02 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508571" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Lv from 58 to 60, Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="4.279835">
                                                    <div>4.28 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508517" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        level 1 ____ 61 + Mountains of Eternal
                                                        Winter quest line, Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="9.62963">
                                                    <div>9.63 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508507" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Pearl Abyss and steam eu/na all boosting and
                                                        life skill and silver and quests and adv
                                                        logs services, Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="60.131687">
                                                    <div>60.13 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508487" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Lv from 58 to 61, Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="6.419753">
                                                    <div>6.42 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508451" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Closing of the season / Seasonal services /
                                                        Detailed description, Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="17.119341">
                                                    <div>17.12 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508416" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        1 billion silver / 10 bill order 1 bill
                                                        free, Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="3.209877">
                                                    <div>3.21 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508402" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Farm any spot from your choice per 1 hour,
                                                        Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="1.872428">
                                                    <div>1.87 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508375" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        10 hours grinding any spot from ur choice,
                                                        Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="16.584362">
                                                    <div>16.58 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28508363" class="tc-item">
                                                <div class="tc-server hidden-xs">(EU)</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">(EU)</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        10 billls +1 free, Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="28.032922">
                                                    <div>28.03 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                        </div>
                                        <!--/noindex-->
                                    </div>
                                </div>
                                <div class="offer">
                                    <div class="offer-list-title-container">
                                        <div class="offer-list-title">
                                            <h3>
                                                <a href="https://funpay.com/en/lots/2062/">Black Desert Services (EU,
                                                    US)</a>
                                            </h3>
                                        </div>
                                    </div>
                                    <div class="offer-tc-container">
                                        <!--noindex-->
                                        <div class="tc table-hover table-clickable tc-short showcase-table tc-sortable"
                                            data-section-type="lot">
                                            <div class="tc-header">
                                                <div class="tc-desc">Description</div>
                                                <div class="tc-price sort" data-sort-field="tc-price"
                                                    data-sort-type="num">
                                                    Price <i class="fa"></i>
                                                </div>
                                            </div>

                                            <a href="https://funpay.com/en/lots/offer?id=29164180" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Boost to 60 LVL+Full SEASON PASS
                                                        Completion+Boost to MAX — Tuvala
                                                        Armor+Weapon, Other
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="11.111111">
                                                    <div>11.11 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=29082296" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Energy boost price per 10 energy, Other
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="1.111111">
                                                    <div>1.11 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28760200" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        The Mountain of Eternal Winter questline
                                                        full, Quests
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="5">
                                                    <div>5.00 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28759781" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Magnus Questline, Quests
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="7.777778">
                                                    <div>7.78 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28485695" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        10bill +1 free, Farm
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="28.333333">
                                                    <div>28.33 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28485643" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        10 hours grinding, Farm
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="17.222222">
                                                    <div>17.22 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28485553" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Farm spots from your account (read the
                                                        description), Farm
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="1.777778">
                                                    <div>1.78 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28425550" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        1 billion silver / 10 bill order 1 bill
                                                        free, Other
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="3.222222">
                                                    <div>3.22 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28423875" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        caphras stone grind 1k, Other
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="6.666667">
                                                    <div>6.67 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28423842" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        I will complete any of the main quest
                                                        chains, Quests
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="66.666666">
                                                    <div>66.67 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28370565" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Pearl Abyss and steam eu/na all boosting and
                                                        life skill and silver and quests services,
                                                        Other
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="5.555555">
                                                    <div>5.56 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28370356" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        level 1 ____ 60 + Mountains of Eternal
                                                        Winter quest line, Other
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="8.888889">
                                                    <div>8.89 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28337164" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        all kind of bdo service with cheapest price
                                                        of all sellers +offers, Other
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="11.111111">
                                                    <div>11.11 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28337156" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Leveling 1 - 61 powerleveling, Other
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="3.333333">
                                                    <div>3.33 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28230525" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Boost to 61 LVL+Full SEASON PASS
                                                        Completion+Boost to MAX — Tuvala
                                                        Armor+Weapon, Other
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="16.666666">
                                                    <div>16.67 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28215293" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        i do all services, Other
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="11.111111">
                                                    <div>11.11 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28215001" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Shakatu Merchants&#039; Archive, Other
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="4.444444">
                                                    <div>4.44 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28214939" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Igor Bartali&#039;s Adventures, Other
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="28.888889">
                                                    <div>28.89 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28214823" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Closing of the season / Seasonal services,
                                                        Other
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="11.111111">
                                                    <div>11.11 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                        </div>
                                        <!--/noindex-->
                                    </div>
                                </div>
                                <div class="offer">
                                    <div class="offer-list-title-container">
                                        <div class="offer-list-title">
                                            <h3>
                                                <a href="https://funpay.com/en/chips/33/">Black Desert Silver (EU,
                                                    US)</a>
                                            </h3>
                                        </div>
                                    </div>
                                    <div class="offer-tc-container">
                                        <!--noindex-->
                                        <div class="tc table-hover table-clickable showcase-table tc-sortable"
                                            data-section-type="chip">
                                            <div class="tc-header">
                                                <div class="tc-server hidden-xxs">Server</div>
                                                <div class="tc-server visible-xxs">
                                                    Description
                                                </div>
                                                <div class="tc-amount text-right sort" data-sort-field="tc-amount"
                                                    data-sort-type="num" data-sort-dir="desc">
                                                    In&nbsp;stock <i class="fa"></i>
                                                </div>
                                                <div class="tc-price text-right sort ascending"
                                                    data-sort-field="tc-price" data-sort-type="num">
                                                    Price/1kk <i class="fa"></i>
                                                </div>
                                            </div>

                                            <a href="https://funpay.com/en/chips/offer?id=10714100-31-33-253-0"
                                                class="tc-item">
                                                <div class="tc-server hidden-xxs">(EU)</div>
                                                <div class="tc-visible-inside visible-xxs">
                                                    <div class="tc-server-inside">(EU)</div>
                                                </div>
                                                <div class="tc-amount" data-s="999998999">
                                                    999 998 999 <span class="unit">kk</span>
                                                </div>
                                                <div class="tc-price" data-s="0">
                                                    <div>0.0032 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/chips/offer?id=10714100-31-33-2385-0"
                                                class="tc-item">
                                                <div class="tc-server hidden-xxs">(NA)</div>
                                                <div class="tc-visible-inside visible-xxs">
                                                    <div class="tc-server-inside">(NA)</div>
                                                </div>
                                                <div class="tc-amount" data-s="999999999">
                                                    999 999 999 <span class="unit">kk</span>
                                                </div>
                                                <div class="tc-price" data-s="1">
                                                    <div>0.0032 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                        </div>
                                        <!--/noindex-->
                                    </div>
                                </div>
                                <div class="offer">
                                    <div class="offer-list-title-container">
                                        <div class="offer-list-title">
                                            <h3>
                                                <a href="https://funpay.com/en/lots/86/">League of Legends Boosting</a>
                                            </h3>
                                        </div>
                                    </div>
                                    <div class="offer-tc-container">
                                        <!--noindex-->
                                        <div class="tc table-hover table-clickable tc-short showcase-table tc-sortable"
                                            data-section-type="lot">
                                            <div class="tc-header">
                                                <div class="tc-server hidden-xs">Server</div>
                                                <div class="tc-desc">Description</div>
                                                <div class="tc-price sort" data-sort-field="tc-price"
                                                    data-sort-type="num">
                                                    Price <i class="fa"></i>
                                                </div>
                                            </div>

                                            <a href="https://funpay.com/en/lots/offer?id=29241616" class="tc-item">
                                                <div class="tc-server hidden-xs">
                                                    EU Nordic &amp; East
                                                </div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">
                                                            EU Nordic &amp; East
                                                        </div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Elo Boosting, Solo Boost, Silver 4 - Gold 4
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="1.111111">
                                                    <div>1.11 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=29241562" class="tc-item">
                                                <div class="tc-server hidden-xs">
                                                    EU Nordic &amp; East
                                                </div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">
                                                            EU Nordic &amp; East
                                                        </div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Elo Boosting, Solo Boost, Bronze 4 - Silver
                                                        4
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="0.555556">
                                                    <div>0.56 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=29241499" class="tc-item">
                                                <div class="tc-server hidden-xs">EU West</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">EU West</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Elo Boosting, Solo Boost, Bronze 4 - Silver
                                                        4
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="0.555556">
                                                    <div>0.56 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=28330928" class="tc-item">
                                                <div class="tc-server hidden-xs">EU West</div>
                                                <div class="tc-desc">
                                                    <div class="tc-visible-inside">
                                                        <div class="tc-server-inside">EU West</div>
                                                    </div>
                                                    <div class="tc-desc-text">
                                                        Elo Boosting euw, Solo Boost, Silver 4 -
                                                        Gold 4
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="1.111111">
                                                    <div>1.11 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                        </div>
                                        <!--/noindex-->
                                    </div>
                                </div>
                                <div class="offer">
                                    <div class="offer-list-title-container">
                                        <div class="offer-list-title">
                                            <h3>
                                                <a href="https://funpay.com/en/lots/334/">Lost Ark Boosting</a>
                                            </h3>
                                        </div>
                                    </div>
                                    <div class="offer-tc-container">
                                        <!--noindex-->
                                        <div class="tc table-hover table-clickable tc-short showcase-table tc-sortable"
                                            data-section-type="lot">
                                            <div class="tc-header">
                                                <div class="tc-desc">Description</div>
                                                <div class="tc-price sort" data-sort-field="tc-price"
                                                    data-sort-type="num">
                                                    Price <i class="fa"></i>
                                                </div>
                                            </div>

                                            <a href="https://funpay.com/en/lots/offer?id=32270372" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        All lost ark services pm me, Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="16.049383">
                                                    <div>16.05 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31731669" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        💥Killing echidna phase 1-3 EU💥, Power
                                                        leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="10.699588">
                                                    <div>10.70 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31731663" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        💥Killing Thaemine phase 1-3 EU💥, Power
                                                        leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="10.699588">
                                                    <div>10.70 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31731661" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        💥Killing Thaemine phase 1-3 EU💥, Power
                                                        leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="9.62963">
                                                    <div>9.63 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31731656" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        💥Killing ivory phase 1-3 EU💥, Power
                                                        leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="9.62963">
                                                    <div>9.63 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31731648" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        💥Killing akkan phase 1-3 EU💥, Power
                                                        leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="8.559671">
                                                    <div>8.56 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31731640" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Killing Kayangel phase 1-3 EU, Power
                                                        leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="7.489712">
                                                    <div>7.49 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31731628" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        💥Killing Brelshaza phase 1-4 EU💥, Power
                                                        leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="9.62963">
                                                    <div>9.63 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31731611" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Killing Kakul phase 1-3 EU, Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="6.419753">
                                                    <div>6.42 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31731598" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Killing Valtan phase 1-2 EU, Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="4.814815">
                                                    <div>4.81 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31731465" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        🔼🔼🔼I will raise your character&#039;s
                                                        gs!EU🔼🔼🔼, Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="16.049383">
                                                    <div>16.05 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31731429" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Killing Belakis/Vykas phase 1-2 EU, Power
                                                        leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="16.584362">
                                                    <div>16.58 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31730245" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        t3 floor 50 _ fast service max 24 hours,
                                                        Power leveling
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="58.847736">
                                                    <div>58.85 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                        </div>
                                        <!--/noindex-->
                                    </div>
                                </div>
                                <div class="offer">
                                    <div class="offer-list-title-container">
                                        <div class="offer-list-title">
                                            <h3>
                                                <a href="https://funpay.com/en/lots/497/">Teamfight Tactics Boosting</a>
                                            </h3>
                                        </div>
                                    </div>
                                    <div class="offer-tc-container">
                                        <!--noindex-->
                                        <div class="tc table-hover table-clickable tc-short showcase-table tc-sortable"
                                            data-section-type="lot">
                                            <div class="tc-header">
                                                <div class="tc-desc">Description</div>
                                                <div class="tc-price sort" data-sort-field="tc-price"
                                                    data-sort-type="num">
                                                    Price <i class="fa"></i>
                                                </div>
                                            </div>

                                            <a href="https://funpay.com/en/lots/offer?id=29241263" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Platinum to Emerald Fast Boosting, Platinum
                                                        4 - Emerald 4
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="2.835391">
                                                    <div>2.84 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=29241197" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Gold to Platinum Fast Boosting, Gold 4 -
                                                        Platinum 4
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="2.08642">
                                                    <div>2.09 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=29241107" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Silver to Gold Fast Boosting, Silver 4 -
                                                        Gold 4
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="1.55144">
                                                    <div>1.55 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=29240991" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Bronze to silver Fast Boost, Bronze 4 -
                                                        Silver 4
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="1.176955">
                                                    <div>1.18 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=29240778" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        Iron to Bronze Fast Boosting, Iron 4 -
                                                        Bronze 4
                                                    </div>
                                                </div>
                                                <div class="tc-price" data-s="0.802469">
                                                    <div>0.80 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                        </div>
                                        <!--/noindex-->
                                    </div>
                                </div>
                                <div class="offer">
                                    <div class="offer-list-title-container">
                                        <div class="offer-list-title">
                                            <h3>
                                                <a href="https://funpay.com/en/lots/614/">Valorant Boosting</a>
                                            </h3>
                                        </div>
                                    </div>
                                    <div class="offer-tc-container">
                                        <!--noindex-->
                                        <div class="tc table-hover table-clickable tc-short showcase-table tc-sortable"
                                            data-section-type="lot">
                                            <div class="tc-header">
                                                <div class="tc-desc">Description</div>
                                                <div class="tc-amount hidden-xxs sort" data-sort-field="tc-amount"
                                                    data-sort-type="num" data-sort-dir="desc">
                                                    In&nbsp;stock <i class="fa"></i>
                                                </div>
                                                <div class="tc-price sort" data-sort-field="tc-price"
                                                    data-sort-type="num">
                                                    Price <i class="fa"></i>
                                                </div>
                                            </div>

                                            <a href="https://funpay.com/en/lots/offer?id=31704082" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        DESCRIPTION, Rank boosting (Duo), Iron 1 -
                                                        Bronze 1 (price per 1 rank)
                                                    </div>
                                                </div>
                                                <div class="tc-amount hidden-xxs">99 999</div>
                                                <div class="tc-price" data-s="1.131687">
                                                    <div>1.13 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31704036" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        DESCRIPTION, Rank boosting (Duo), Bronze 1 -
                                                        Silver 1 (price per 1 rank)
                                                    </div>
                                                </div>
                                                <div class="tc-amount hidden-xxs">99 999</div>
                                                <div class="tc-price" data-s="1.584362">
                                                    <div>1.58 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31703794" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        DESCRIPTION, Rank boosting (Duo), Silver 1 -
                                                        Gold 1 (price per 1 rank)
                                                    </div>
                                                </div>
                                                <div class="tc-amount hidden-xxs">99 999</div>
                                                <div class="tc-price" data-s="2.829218">
                                                    <div>2.83 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31703187" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        DESCREPTION, Rank boosting (Duo), Gold 1 -
                                                        Platinum 1 (price per 1 rank)
                                                    </div>
                                                </div>
                                                <div class="tc-amount hidden-xxs">99 999</div>
                                                <div class="tc-price" data-s="3.50823">
                                                    <div>3.51 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31703117" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        DESCREPTION, Rank boosting (Solo), Iron 1 -
                                                        Bronze 1 (price per 1 rank)
                                                    </div>
                                                </div>
                                                <div class="tc-amount hidden-xxs">99 999</div>
                                                <div class="tc-price" data-s="0.679012">
                                                    <div>0.68 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31703058" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        DESCRIPTION, Rank boosting (Solo), Bronze 1
                                                        - Silver 1 (price per 1 rank)
                                                    </div>
                                                </div>
                                                <div class="tc-amount hidden-xxs">99 999</div>
                                                <div class="tc-price" data-s="1.131687">
                                                    <div>1.13 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31702661" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        DESCRIPTION, Rank boosting (Solo), Silver 1
                                                        - Gold 1 (price per 1 rank)
                                                    </div>
                                                </div>
                                                <div class="tc-amount hidden-xxs">99 999</div>
                                                <div class="tc-price" data-s="1.358025">
                                                    <div>1.36 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                            <a href="https://funpay.com/en/lots/offer?id=31702547" class="tc-item">
                                                <div class="tc-desc">
                                                    <div class="tc-desc-text">
                                                        DESCREPTION, Rank boosting (Solo), Gold 1 -
                                                        Platinum 1 (price per 1 rank)
                                                    </div>
                                                </div>
                                                <div class="tc-amount hidden-xxs">99 999</div>
                                                <div class="tc-price" data-s="2.376543">
                                                    <div>2.38 <span class="unit">$</span></div>
                                                </div>
                                            </a>
                                        </div>
                                        <!--/noindex-->
                                    </div>
                                </div>
                            </div>

                            <h5 id="reviews" class="mb10 text-bold">Reviews</h5>
                            <div class="offer">
                                <div class="param-item mb10">
                                    <h5 class="mb10">Seller's rating</h5>
                                    <div class="row row-20 row-inline">
                                        <div class="col-lg-8 mb10">
                                            <div class="rating-value text-nowrap inline-block-vat mr10">
                                                <span class="big">5</span>
                                                <span class="inline-block-vat">out of 5</span>
                                            </div>
                                            <div class="rating-full inline-block-vat">
                                                <div class="rating-full-item5">
                                                    <div class="rating-mini"></div>
                                                    <div class="rating-progress">
                                                        <div style="width: 100%"></div>
                                                    </div>
                                                </div>
                                                <div class="rating-full-item4">
                                                    <div class="rating-mini"></div>
                                                    <div class="rating-progress">
                                                        <div style="width: 0%"></div>
                                                    </div>
                                                </div>
                                                <div class="rating-full-item3">
                                                    <div class="rating-mini"></div>
                                                    <div class="rating-progress">
                                                        <div style="width: 0%"></div>
                                                    </div>
                                                </div>
                                                <div class="rating-full-item2">
                                                    <div class="rating-mini"></div>
                                                    <div class="rating-progress">
                                                        <div style="width: 0%"></div>
                                                    </div>
                                                </div>
                                                <div class="rating-full-item1">
                                                    <div class="rating-mini"></div>
                                                    <div class="rating-progress">
                                                        <div style="width: 0%"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-xs-12 mb10">
                                            <div class="text-mini text-light mb5">
                                                35 reviews in 5 months
                                            </div>
                                            <div class="dyn-table-filter reviews-filter">
                                                <a class="btn btn-default btn-block dropdown-toggle"
                                                    data-toggle="dropdown" role="button" aria-haspopup="true"
                                                    aria-expanded="false"><span class="filter-text">All reviews</span>
                                                    <span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="javascript:void(0)" data-value="">All reviews</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0)" data-value="1"><span
                                                                class="review-rating">
                                                                <div class="rating">
                                                                    <div class="rating1"></div>
                                                                </div>
                                                            </span></a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0)" data-value="2"><span
                                                                class="review-rating">
                                                                <div class="rating">
                                                                    <div class="rating2"></div>
                                                                </div>
                                                            </span></a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0)" data-value="3"><span
                                                                class="review-rating">
                                                                <div class="rating">
                                                                    <div class="rating3"></div>
                                                                </div>
                                                            </span></a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0)" data-value="4"><span
                                                                class="review-rating">
                                                                <div class="rating">
                                                                    <div class="rating4"></div>
                                                                </div>
                                                            </span></a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0)" data-value="5"><span
                                                                class="review-rating">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="dyn-table">
                                    <div class="dyn-table-body">
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                This month
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 10 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">+</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                This month
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 60 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            The best, I recommend buying his services
                                                            :D
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                This month
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 60 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            great work!
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                This month
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 50 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">good</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                Month ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 20 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            Very friendly and communicative, fast and
                                                            hits above average numbers
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                Month ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 10 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            Fast, efficient, recommended
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                Month ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 20 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            Best grinding ))
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                Month ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 30 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            Good speed
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                Month ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 6 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            all good, instant response
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                Month ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 20 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">Good</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                Month ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 2 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">+++</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                Month ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 20 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            Very nice person, discussed nuances and
                                                            completed order perfectly. I recommend it.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                Month ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 30 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            Good as usual
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                2 months ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 7 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            Took longer than initially stated but
                                                            completed regardless and it worked out for
                                                            me.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                2 months ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 30 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">all good</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                2 months ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 30 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            Good trader, will order again
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="review-item-row">
                                                    <div class="h5 mb5">Seller's response</div>
                                                    <div class="review-item-answer review-compiled-reply">
                                                        <div>
                                                            You are welcome ^^<br />
                                                            Thanks
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                2 months ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 3 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">+++</div>
                                                    </div>
                                                </div>
                                                <div class="review-item-row">
                                                    <div class="h5 mb5">Seller's response</div>
                                                    <div class="review-item-answer review-compiled-reply">
                                                        <div>
                                                            You are welcome ^^<br />
                                                            Thanks
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                2 months ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 3 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            Good suport,recomend,good price etc
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="review-item-row">
                                                    <div class="h5 mb5">Seller's response</div>
                                                    <div class="review-item-answer review-compiled-reply">
                                                        <div>
                                                            You are welcome ^^<br />
                                                            Thanks
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                2 months ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 50 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            Good communication
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="review-item-row">
                                                    <div class="h5 mb5">Seller's response</div>
                                                    <div class="review-item-answer review-compiled-reply">
                                                        <div>
                                                            You are welcome ^^<br />
                                                            Thanks
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                3 months ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 50 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            Very good saler
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="review-item-row">
                                                    <div class="h5 mb5">Seller's response</div>
                                                    <div class="review-item-answer review-compiled-reply">
                                                        <div>
                                                            You are welcome ^^<br />
                                                            Thanks
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                3 months ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 10 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            Best BDO grinding
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                3 months ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 10 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            Best BDO grinding
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                3 months ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 3 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">
                                                            The Best seller ever and so so quick i
                                                            recommend him and with best price Thanks a
                                                            lot
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="review-item-row">
                                                    <div class="h5 mb5">Seller's response</div>
                                                    <div class="review-item-answer review-compiled-reply">
                                                        <div>
                                                            You are welcome ^^<br />
                                                            Thanks
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                3 months ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 10 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">quick</div>
                                                    </div>
                                                </div>
                                                <div class="review-item-row">
                                                    <div class="h5 mb5">Seller's response</div>
                                                    <div class="review-item-answer review-compiled-reply">
                                                        <div>
                                                            You are welcome ^^<br />
                                                            Thanks
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-container">
                                            <div class="review-item">
                                                <div class="review-item-row">
                                                    <div class="review-compiled-review">
                                                        <div class="review-item-user">
                                                            <div class="review-item-photo">
                                                                <img src="/img/layout/avatar.png" alt="" />
                                                            </div>
                                                            <div class="review-item-rating pull-right hidden-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                            <div class="review-item-date">
                                                                3 months ago
                                                            </div>
                                                            <div class="review-item-detail">
                                                                Black Desert (EU, US), 10 $
                                                            </div>
                                                            <div class="review-item-rating visible-xs">
                                                                <div class="rating">
                                                                    <div class="rating5"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="review-item-text">great</div>
                                                    </div>
                                                </div>
                                                <div class="review-item-row">
                                                    <div class="h5 mb5">Seller's response</div>
                                                    <div class="review-item-answer review-compiled-reply">
                                                        <div>
                                                            You are welcome ^^<br />
                                                            Thanks
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <form method="post" class="dyn-table-form" action="https://funpay.com/en/users/reviews">
                                    <input type="hidden" name="user_id" value="10714100" />
                                    <input type="hidden" name="continue" value="QmB4UTcDJ0o=" />
                                    <input type="hidden" name="filter" value="" />
                                </form>

                                <button type="button" class="btn btn-default btn-block margin-top dyn-table-continue">
                                    Show more reviews
                                </button>
                            </div>
                        </div>

                        <div class="col-md-5 chat-profile-container">
                            <div class="js-chat-top"></div>
                            <div class="chat chat-float mb35 a-affix">
                                <div class="chat-header">
                                    <div class="media media-user online">
                                        <div class="media-left">
                                            <a href="https://funpay.com/en/users/10714100/"><img
                                                    src="https://sfunpay.com/s/avatar/5o/w6/5ow69mlhqlvt6fjhlzdy.jpg"
                                                    alt="" width="50" class="img-circle" /></a>
                                        </div>
                                        <div class="media-body">
                                            <div class="media-user-name">
                                                <a href="https://funpay.com/en/users/10714100/">tifa69</a>
                                            </div>
                                            <div class="media-user-status">Online</div>
                                        </div>
                                    </div>
                                    <div class="chat-header-controls">
                                        <a class="btn btn-info-icon btn-info-sm btn-gray chat-control"
                                            href="https://funpay.freshdesk.com/en/support/tickets/new" target="_blank"
                                            title="Report">
                                            <i class="fa fa-exclamation-triangle icon"></i>
                                        </a>
                                    </div>
                                </div>

                                <div class="chat-message-container">
                                    <div class="chat-message-list hidden"></div>
                                    <div class="chat-empty">
                                        <div class="seller-promo">
                                            <div class="rating-stars rating-5">
                                                <i class="fas"></i><i class="fas"></i><i class="fas"></i><i
                                                    class="fas"></i><i class="fas"></i>
                                            </div>
                                            <div class="seller-promo-desc">
                                                <a href="https://funpay.com/en/users/10714100/#reviews">
                                                    35 reviews in 5 months
                                                </a>
                                            </div>
                                            <div class="seller-promo-note">
                                                Contact the seller<br />before payment
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="chat-form">
                                    <form action="https://funpay.com/en/chat/message" method="post">
                                        <div class="chat-form-input">
                                            <div class="form-group" id="comments">
                                                <textarea class="form-control" name="content" cols="30" rows="1"
                                                    placeholder="Message..."></textarea>
                                            </div>
                                        </div>
                                        <div class="chat-form-btn">
                                            <button type="submit" class="btn btn-gray btn-round">
                                                <i class="fa fa-arrow-right"></i>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="wrapper-footer" style="position:relative;bottom:0px;text-align:center;width:100%">

    @endsection