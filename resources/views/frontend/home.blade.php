@extends('layouts.frontend.app')

@section('content')

<section id="content-body">
    <div class="search-fade"></div>
    <div id="content" class="content-promo content-promo-index">
        <div class="promo-cd promo-abc">
            <div class="cd-container">
                <div class="cd">
                    <div class="spacer"></div>
                    <img src="{{ asset('public/assets/frontend/s/file/e3/vk/funpay_poke.e3vk8b0bhk.jpg') }}" alt="" />
                    <svg viewBox="0 0 200 200">
                        <defs>
                            <path id="text_path" fill="none" d="M 100, 10 a 90,90 0 1,0 0,180 a 90,90 0 1,0 0,-180" />
                        </defs>
                        <g class="text-main" font-size="14px">
                            <text text-anchor="end" class="no-select" fill="white">
                                <textPath xlink:href="#text_path" startOffset="65%"></textPath>
                            </text>
                        </g>
                    </svg>
                </div>
                <a class="cd-satellite hidden-xs" href="../chips/191/index.html" rel="nofollow" target="_blank">
                    Arena Breakout: Infinite</a>
                <div class="social-statistic-list hidden-xs no-select">
                    <a href="https://www.facebook.com/funpay.official" class="social-statistic social-statistic-fb" rel="nofollow" target="_blank">
                        <div class="social-statistic-logo">
                            <i class="fab fa-facebook-square"></i>
                        </div>
                        <div class="social-statistic-info">
                            <strong>0</strong><br />complaints
                        </div>
                    </a>
                    <a href="https://t.me/funpay_english" class="social-statistic social-statistic-telegram" rel="nofollow" target="_blank">
                        <div class="social-statistic-logo">
                            <svg>
                                <use xlink:href="{{asset('img/layout/sprites.svg#social-logo-telegram')}}"></use>
                            </svg>
                        </div>
                        <div class="social-statistic-info">
                            News<br />
                            and memes
                        </div>
                    </a>
                    <a href="https://www.mywot.com/scorecard/funpay.com" class="social-statistic social-statistic-wot" rel="nofollow" target="_blank">
                        <div class="social-statistic-logo"><span></span></div>
                        <div class="social-statistic-info">
                            <strong>11 704</strong><br />reviews
                        </div>
                    </a>
                </div>
                <div class="social-statistic-list social-statistic-list-xs visible-xs no-select">
                    <a href="https://www.facebook.com/funpay.official" class="social-statistic social-statistic-fb" rel="nofollow" target="_blank">
                        <div class="social-statistic-logo">
                            <i class="fab fa-facebook-square"></i>
                        </div>
                        <div class="social-statistic-info">
                            <strong>0</strong><br />complaints
                        </div>
                    </a>
                </div>
            </div>

            <div class="promo-games promo-games-all">
                <div class="container">
                    <div class="content-with-cd">
                        <div class="promo-game-list-header">
                            <div class="title-mini visible-xs">
                                All Games in Alphabetic Order
                            </div>
                            <nav class="nav-abc" id="nav-abc">
                                <ul class="nav list-unstyled">
                                    @foreach (range('A', 'Z') as $letter)
                                        <li><a href="#letter{{ $letter }}">{{ $letter }}</a></li>
                                    @endforeach
                                </ul>
                            </nav>
                        </div>

                        <div class="promo-game-list">

                            @foreach (range('A', 'Z') as $letter)
                                <div class="promo-game-list-title" id="letter{{ $letter }}">{{ $letter }}</div>
                                <div class="row row-10 flex">
                                    @php
                                        $gamesVar = 'gameswith' . $letter;
                                    @endphp
                                    @foreach ($$gamesVar as $game)
                                        <div class="col-md-3 col-xs-6">
                                            <div class="promo-game-item">

                                                <div class="game-title" data-id="{{ $game->id }}">
                                                    <a href="{{route('game.details',$game->slug)}}">{{ $game->name }}</a>
                                                </div>

                                                <ul class="list-inline" data-id="{{ $game->id }}">
                                                    @foreach ($game->subCategories as $subcat)
                                                        <li>
                                                            <a href="{{route('subcatpage',$subcat->slug)}}">{{ $subcat->name }}</a>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            @endforeach

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="wrapper-footer" style="position:relative;bottom:0px;text-align:center;width:100%">

@endsection
