@extends('layouts.frontend.app')

@section('content')

<section id="content-body">
    <div class="search-fade"></div>
    <div id="content" class="content-lots content-lots-trade">
        <div class="container">
            <div class="row">
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
                <div class="col-md-2 col-sm-3">
                    <div class="back-link">
                        <a href="{{route('subcatpage',$sub_category_slug)}}" class="js-back-link"><i
                                class="fa fa-chevron-left"></i><span class="inside">AFK Arena
                                Accounts</span></a>
                    </div>
                </div>
                <div class="col-md-10 col-sm-9">
                    @if(!$offer_data)
                    <div class="page-content">

                        <h1 class="page-header page-header-no-hr">Your offers</h1>
                        <div class="text-lg margin-bottom">Once you add any offers, they will be displayed
                            here.</div>
                        <a href="{{route('offer.create')}}" class="btn btn-primary">Add an offer</a>
                    </div>

                    @else

                    <div class="page-content">
                        <div class="row">
                            <div class="col-lg-6 col-md-5">
                                <h1 class="page-header page-header-no-hr">Your offers</h1>
                            </div>
                            <div class="col-lg-6 col-md-7">
                                <div class="row row-10 offer-controls" style="text-align:right">
                                    <!-- <div class="col-sm-6 mb10">
                                        <button type="button" class="btn btn-default btn-block js-lot-raise"
                                            data-game="250" data-node="791">Boost offers</button>
                                    </div> -->
                                    <div class="col-sm-6 mb10">
                                        <a href="{{route('offer.create')}}" class="btn btn-primary btn-block">Add an
                                            offer</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--noindex-->
                        <div class="tc table-hover table-clickable tc-short showcase-table" data-section-type="lot">
                            <div class="tc-header">
                                @if($offer_data)

                                @php
                                function getRelatedValue($searchKey, $keysArray, $valuesArray)
                                {

                                $index = array_search($searchKey, $keysArray);
                                if ($index !== false && isset($valuesArray[$index])) {
                                return $valuesArray[$index]; 

                                }
                                }
                                $temp_var = 0;
                                @endphp
                                @if($offer_data[0]['name'] == 'Platform' || $offer_data[0]['name'] == 'platform')
                                @php
                                $temp_var = 'Platform';
                                @endphp
                                <div class="tc-server hidden-xs">Platform</div>
                                @elseif($offer_data[0]['name'] == 'Server' || $offer_data[0]['name'] == 'server')
                                @php
                                $temp_var = 'Server';
                                @endphp
                                <div class="tc-server hidden-xs">Server</div>
                                @elseif($offer_data[0]['name'] == 'Game' || $offer_data[0]['name'] == 'game')
                                @php
                                $temp_var = 'Game';
                                @endphp
                                <div class="tc-server hidden-xs">Game</div>

                                @endif
                                @endif
                                <div class="tc-desc">Description</div>
                                <div class="tc-amount hidden-xxs sort" data-sort-field="tc-amount" data-sort-type="num"
                                    data-sort-dir="desc">In&nbsp;stock</div>
                                <div class="tc-price sort" data-sort-field="tc-price" data-sort-type="num">Price</div>
                            </div>
                            @if($offers)
                            @foreach($offers as $offer)
                            @php

                            $array = json_decode($offer['fields']);
                            $labels = [];
                            $values = [];

                            foreach($array as $key => $arr){
                            $temp_variable = explode('-',$arr);
                            if(count($temp_variable)>1){
                            $values[] = $arr;
                            }else{
                            $labels[] = $arr;
                            }
                            }

                            $searchKey = $temp_var;
                            $result = getRelatedValue($searchKey, $labels, $values);
                            $platform = explode("-", $result);
                            @endphp
                            <a href="https://funpay.com/en/lots/offerEdit?node=791&amp;offer=33197025" class="tc-item"
                                data-offer="33197025">
                                <div class="tc-server hidden-xs">{{$platform[1]}}</div>
                                <div class="tc-desc">

                                    <div class="tc-desc-text">{{$offer['description']}}</div>
                                </div>
                                <div class="tc-amount hidden-xxs">{{$offer['stock']}}</div>
                                <div class="tc-price" data-s="15">
                                    <div>{{$offer['price']}} <span class="unit">$</span></div>
                                </div>
                            </a>
                            @endforeach
                            @endif
                        </div>
                        <!--/noindex-->
                    </div>

                    @endif
                </div>
            </div>
        </div>
    </div>
</section>
<div class="wrapper-footer" style="position:relative;bottom:0px;text-align:center;width:100%">
    @endsection