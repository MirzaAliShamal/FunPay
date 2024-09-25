<?php 
use Carbon\Carbon;
?>
@extends('layouts.frontend.app')
@section('content')

<style>
.filter-container {
    margin-bottom: 30px;
}

.filter-btn-container {
    margin-bottom: 15px;
}

.showcase-filters {
    margin-top: 20px;
}

.lot-field-range-box {
    display: flex;
    gap: 10px;
}

.lot-field-range {
    width: 100px;
    /* Adjust width as needed */
}

.form-control-box.switch {
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.form-control-box.switch span {
    margin-right: 10px;
}

table {
    border: #eaeaea 1px solid;
    width: 100%;
}

.thclass {
    border: #eaeaea 1px solid;
    padding: 10px;
    font-size: 14px;
}

/* Container for pagination */
.pagination {
    margin: 20px 0;
    font-family: Arial, sans-serif;
}

/* Navigation container */
.pagination nav {
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* Flexbox settings for pagination items on small screens */
.pagination .flex {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 100%;
}

/* Pagination link container on small screens */
.pagination .flex>div {
    display: flex;
    justify-content: space-between;
    width: 100%;
}

/* Pagination links container for desktop */
.pagination .hidden.sm\\:flex-1 {
    display: flex;
    align-items: center;
    justify-content: space-between;
}

/* Pagination text */
.pagination .text-sm {
    font-size: 0.875rem;
    color: white;
}

/* Pagination links and items */
.pagination a,
.pagination span {
    display: inline-flex;
    align-items: center;
    padding: 10px 15px;
    font-size: 0.875rem;
    color: #2d3748;
    background-color: #edf2f7;
    border: 1px solid #e2e8f0;
    border-radius: 0.375rem;
    transition: background-color 0.2s, color 0.2s;
}

/* Active pagination item */
.pagination .relative.inline-flex.items-center.text-gray-500.bg-white.border-gray-300.cursor-default {
    background-color: #3182ce;
    color: white;
    border-color: #3182ce;
}

/* Hover effect for pagination links */
.pagination a:hover {
    background-color: #e2e8f0;
    color: white;
    border-color: #e2e8f0;
}

/* Disabled pagination link */
.pagination .relative.inline-flex.items-center.text-gray-500.bg-white.border-gray-300.cursor-default {
    color: white;
    background-color: #edf2f7;
    border-color: #e2e8f0;
    cursor: not-allowed;
}

/* Previous and Next buttons */
.pagination .relative.inline-flex.items-center.px-4.py-2.text-sm.font-medium {
    font-weight: 600;
}

/* Arrow icons */
.pagination svg {
    width: 1.25rem;
    height: 1.25rem;
    fill: currentColor;
}

/* Dark mode styles */
@media (prefers-color-scheme: dark) {

    .pagination a,
    .pagination span {
        background-color: #2d3748;
        color: white;
        border-color: #4a5568;
    }

    .pagination .relative.inline-flex.items-center.text-gray-500.bg-white.border-gray-300.cursor-default {
        background-color: #4a5568;
        color: white;
        border-color: #4a5568;
    }

    .pagination a:hover {
        background-color: #4a5568;
        color: white;
        border-color: #4a5568;
    }
}
</style>

@section('content')

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
                    <img src="{{asset('https://sfunpay.com/s/file/5c/uj/afk_arena.5cujrn82vg.jpg')}}" alt="">
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

            <div class="container" style="z-index:1000">
                <div class="cd-forward">
                    <div class="counter-list counter-list-circles">


                        @foreach ($category->subCategories as $subcat)
                        <a href="{{ route('subcatpage', $subcat->slug) }}"
                            class="counter-item {{ $subcat->name === $subcategory->name ? 'active' : '' }}"
                            style="width: 110px; height: 110px;">
                            <div class="inside">
                                <div class="counter-param">{{ $subcat->name }}</div>
                                <div class="counter-value">@if($subcat->offers){{count($subcat->offers)}}@else 0 @endif
                                </div>
                            </div>
                        </a>
                        @endforeach
                    </div>

                    <div class="layout-swap layout-swap-disabled">
                        <div class="with-tbl-footer">
                            <div class="content-with-cd-wide showcase" data-game="250" data-section="lot-791">
                                <div class="filter-container">
                                    <div class="row row-10 filter-btn-container visible-xs">
                                        <div class="col-xs-6">
                                            <a
                                                class="btn btn-default wfull visible-xs clearfix showcase-filters-toggle active">
                                                <span class="pull-left">Filters</span>
                                                <span class="pull-right"><i class="fas fa-sliders-h"></i></span>
                                            </a>
                                        </div>
                                        <div class="col-xs-6">
                                            <div class="offer-btn">
                                                <a href="https://funpay.com/en/lots/791/trade"
                                                    class="btn btn-default wfull">Sell Accounts</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-9 col-sm-8">
                                            <div class="showcase-filters">
                                                <!-- <form method="GET"
                                                    action="{{ route('subcatpage', $subcategory->slug) }}"
                                                    class="form-inline form-inline-long form-inline-margins">
                                                    <div class="lot-fields">
                                                        @foreach ($subcategory->filters as $filter)
                                                        @if ($filter->type === 'checkbox')
                                                        @foreach ($filter->options as $option)
                                                        <div class="form-group">
                                                            <label class="form-control-box switch">
                                                                <span>{{ $option->name }}</span>
                                                                <span class="checkbox checkbox-switch pull-right">
                                                                    <input type="checkbox"
                                                                        name="filters[{{ $filter->id }}][]"
                                                                        value="{{ $option->id }}"
                                                                        id="filter{{ $filter->id }}_{{ $option->id }}"
                                                                        {{ in_array($option->id, request('filters.' . $filter->id, [])) ? 'checked' : '' }}>
                                                                    <i></i>
                                                                </span>
                                                            </label>
                                                        </div>
                                                        @endforeach
                                                        @elseif ($filter->type === 'dropdown')
                                                        <div class="form-group">
                                                            <select class="form-control showcase-filter-input"
                                                                name="filters[{{ $filter->id }}]">
                                                                <option value="">Select {{ $filter->name }}</option>
                                                                @foreach ($filter->options as $option)
                                                                <option value="{{ $option->id }}"
                                                                    {{ request('filters.' . $filter->id) == $option->id ? 'selected' : '' }}>
                                                                    {{ $option->name }}
                                                                </option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        @elseif ($filter->type === 'radio')
                                                        @foreach ($filter->options as $option)
                                                        <div class="form-group">
                                                            <label class="form-control-box switch">
                                                                <span>{{ $option->name }}</span>
                                                                <span class="checkbox checkbox-switch pull-right">
                                                                    <input type="radio"
                                                                        name="filters[{{ $filter->id }}]"
                                                                        value="{{ $option->id }}"
                                                                        id="filter{{ $filter->id }}_{{ $option->id }}"
                                                                        {{ request('filters.' . $filter->id) == $option->id ? 'checked' : '' }}>
                                                                    <i></i>
                                                                </span>
                                                            </label>
                                                        </div>
                                                        @endforeach
                                                        @elseif ($filter->type === 'text')
                                                        <div class="form-group">
                                                            <input type="text"
                                                                class="form-control showcase-filter-input"
                                                                name="filters[{{ $filter->id }}]"
                                                                value="{{ request('filters.' . $filter->id) }}"
                                                                placeholder="Enter {{ $filter->name }}">
                                                        </div>
                                                        @elseif ($filter->type === 'textarea')
                                                        <div class="form-group">
                                                            <textarea class="form-control showcase-filter-input"
                                                                name="filters[{{ $filter->id }}]" style="height:40px"
                                                                placeholder="Enter {{ $filter->name }}">{{ request('filters.' . $filter->id) }}</textarea>
                                                        </div>
                                                        @elseif ($filter->type === 'date')
                                                        <div class="form-group">
                                                            <input type="date"
                                                                class="form-control showcase-filter-input"
                                                                name="filters[{{ $filter->id }}]"
                                                                value="{{ request('filters.' . $filter->id) }}">
                                                        </div>
                                                        @elseif ($filter->type === 'range')
                                                        <div class="form-group">
                                                            <input type="range" class="form-control-range"
                                                                name="filters[{{ $filter->id }}]"
                                                                value="{{ request('filters.' . $filter->id) }}">
                                                        </div>
                                                        @endif
                                                        @endforeach
                                                    </div>
                                                    <div class="form-group">
                                                        <button type="submit" class="btn btn-primary">Apply
                                                            Filters</button>
                                                    </div>
                                                </form> -->
                                            </div>
                                        </div>
                                        <div class="col-md-3 col-sm-4 hidden-xs mb-3">

                                            <div class="pull-right">
                                                @if(!session('user_id'))
                                                <a href="{{route('user.seller.login')}}"
                                                    class="btn btn-default btn-wide">Sell Accounts</a>
                                                @else
                                                @if(session('user_type') == 'seller')
                                                <a href="{{route('offer.index')}}" class="btn btn-default btn-wide">Sell
                                                    Accounts</a>
                                                @endif
                                                @endif
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <div class="item-list">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th class="thclass">{{$subcategory->offercategory->name}}</th>
                                                <th class="thclass">Description</th>
                                                <th class="thclass">Seller</th>
                                                <th class="thclass">Price</th>
                                            </tr>
                                        <tbody>
                                            @php
                                            function getTimePassed($date)
                                            {
                                            $createdAt = Carbon::parse($date);
                                            return $createdAt->diffForHumans();
                                            }

                                            function getRelatedValue($searchKey, $keysArray, $valuesArray)
                                            {

                                            $index = array_search($searchKey, $keysArray);
                                            if ($index !== false && isset($valuesArray[$index])) {
                                            return $valuesArray[$index];

                                            }
                                            }
                                            @endphp
                                            @foreach ($items as $item)
                                            @php
                                            $seller_data = $seller_obj->whereid($item->seller_id)->get()->toArray();
                                            $time_difference = getTimePassed($item->created_at);

                                            $array = json_decode($item->fields);
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

                                            $searchKey = $subcategory->offercategory->name;
                                            $result = getRelatedValue($searchKey, $labels, $values);
                                            $platform = explode("-", $result);

                                            @endphp
                                            @if(session('user_type') == 'buyer' || !session('user_type'))
                                            <tr>
                                                <td class="thclass" width="20%"><a
                                                        style="text-decoration: none; color: inherit;"
                                                        href="{{ route('buyer.checkout', $item->id) }}">{{$platform[1]}}</a>
                                                </td>
                                                <td class="thclass" width="40%"><a
                                                        style="text-decoration: none; color: inherit;"
                                                        href="{{ route('buyer.checkout', $item->id) }}">{{ $item->description }}</a>
                                                </td>
                                                <td class="thclass" width="20%">
                                                    <div class="tc-user">
                                                        <div class="media media-user online style-circle">
                                                            <div class="media-left">
                                                                <div class="avatar-photo pseudo-a" tabindex="0"
                                                                    data-href="https://funpay.com/en/users/8674443/"
                                                                    style="background-image: url(https://sfunpay.com/s/avatar/d3/6o/d36o0azpw4v9azf1vqec.jpg);">
                                                                </div>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-user-name">
                                                                    <span class="pseudo-a"
                                                                        tabindex="0">{{ $seller_data[0]['name'] }}</span>
                                                                </div>
                                                                <div class="media-user-reviews">
                                                                    <div class="rating-stars rating-5"><i
                                                                            class="fas"></i><i class="fas"></i><i
                                                                            class="fas"></i><i class="fas"></i><i
                                                                            class="fas"></i></div>
                                                                    <span class="rating-mini-count">847</span>
                                                                </div>
                                                                <div class="media-user-info">{{ $time_difference }}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="thclass" width="20%">
                                                    <a style="text-decoration: none; color: inherit;"
                                                        href="{{ route('buyer.checkout', $item->id) }}">${{ number_format($item->price, 2) }}</a>
                                                </td>
                                            </tr>
                                            @else
                                            <tr>
                                                <td class="thclass" width="20%">{{$platform[1]}}</td>
                                                <td class="thclass" width="40%">{{ $item->description }}</td>
                                                <td class="thclass" width="20%">
                                                    <div class="tc-user">
                                                        <div class="media media-user online style-circle">
                                                            <div class="media-left">
                                                                <div class="avatar-photo pseudo-a" tabindex="0"
                                                                    data-href="https://funpay.com/en/users/8674443/"
                                                                    style="background-image: url(https://sfunpay.com/s/avatar/d3/6o/d36o0azpw4v9azf1vqec.jpg);">
                                                                </div>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-user-name">
                                                                    <span class="pseudo-a"
                                                                        tabindex="0">{{ $seller_data[0]['name'] }}</span>
                                                                </div>
                                                                <div class="media-user-reviews">
                                                                    <div class="rating-stars rating-5"><i
                                                                            class="fas"></i><i class="fas"></i><i
                                                                            class="fas"></i><i class="fas"></i><i
                                                                            class="fas"></i></div>
                                                                    <span class="rating-mini-count">847</span>
                                                                </div>
                                                                <div class="media-user-info">{{ $time_difference }}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="thclass" width="20%">
                                                    ${{ number_format($item->price, 2) }}</td>
                                            </tr>
                                            @endif
                                            @endforeach
                                        </tbody>
                                        </thead>
                                    </table>



                                    @if ($items->isEmpty())
                                    <p>No items found for the selected filters.</p>
                                    @endif
                                </div>

                                <div class="pagination">
                                    {{ $items->links() }}
                                    <!-- Pagination links -->
                                </div>

                            </div>
                        </div>
                    </div>





                </div>
                <div>
                    <div class="content-with-cd-wide tbl-footer">
                        <div class="game-about">
                            <div class="block-info">
                                <p>AFK Arena is a casual action card game. It is a CCG (collectible card game) mixed
                                    with RPG (role-playing game) elements. Enter the beautiful world of Esperia, go
                                    through battle phases and defeat your enemies. Heroes are divided into 6 different
                                    factions; each of them has unique abilities and its own equipment, which gives room
                                    for strategy development. Choose a set of heroes, their abilities, and faction
                                    bonuses to defeat the army of evil. Every single action, no matter how minor, is
                                    rewarded generously. Join players all over the world in this journey of fantasy and
                                    prevent an ancient evil from destroying the realm of Esperia.</p>
                                <p>FunPay can help you get the strongest AFK Arena heroes. FunPay is the biggest
                                    marketplace where you can buy AFK Arena account without intermediaries. All
                                    transactions are secured and customers are fully protected from payment fraud. The
                                    buyer’s funds are frozen until the seller fulfills his obligations. The buyer
                                    confirms the payment only after receiving and checking the account data. But this
                                    isn’t our only advantage! Here are the benefits of using FunPay: free market, wide
                                    range of offers and payment methods, user-friendly interface, fast order
                                    fulfillment, regularly updated items/services range and the above-mentioned
                                    transaction protection.</p>
                                <h2>How to buy AFK Arena account:</h2>
                                <p>Choose an offer you like. The seller performance evaluation system will help you:
                                    feedback can show the reliability of a seller.</p>
                                <ol>
                                    <li>Find AFK Arena account for sale. Select an offer by clicking on it and go to the
                                        checkout page.</li>
                                    <li>Contact a seller via order chat to discuss all the details. </li>
                                    <li>Choose a payment method and click “Pay”.</li>
                                </ol>
                                <p>Once the transaction is confirmed, the seller will see that the order has been paid
                                    and will give access to the account. After checking the account data, the buyer
                                    completes the transaction by clicking on the appropriate button. Then the funds that
                                    were frozen are transferred to the seller.</p>
                                <h3>For sellers</h3>
                                <p>If you are tired of playing or you can level heroes fast, then you can sell your AFK
                                    Arena account on our marketplace. In order to do this, you should sign up as a
                                    seller. Read the rules and take a brief test on whether you know it. Then you can
                                    post your offer.</p>
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

    @section('script')
    <!-- Add any specific scripts here -->
    @endsection