@extends('layouts.frontend.app')

@section('content')
<section id="content-body" style="margin-bottom:20px">
    <div class="search-fade"></div>
    <div id="content" class="content-lots content-lots-offeredit">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-sm-3">
                    <div class="back-link">
                        <a href="{{route('offer.index')}}" class="js-back-link"><i class="fa fa-chevron-left"></i><span
                                class="inside">Back</span></a>
                    </div>
                </div>
                <div class="col-md-10 col-sm-9">
                    <div class="page-content">
                        <h1 class="page-header page-header-no-hr">New offer</h1>
                        <form action="{{route('create.frontend.offer')}}" method="post" enctype="multipart/form-data" class="form-offer-editor">
                           @csrf
                            @if($offer_data)


                            @php 
                                $temp_variable = null;
                            @endphp
                            @foreach($offer_data[0]['offer_fields'] as $data)
                            @php
                                if($temp_variable == null){
                                    $temp_variable = $data['label'];
                                }else{
                                    $temp_variable .= ','.$data['label'] ;
                                }
                                
                            @endphp
                            <input type="hidden" name="fields[]" value="{{$data['label']}}">
                            @if($data['type'] == 1)
                            <div class="form-group">
                                <div class="form-group lot-field" data-id="{{$data['label']}}"><label
                                        class="control-label">{{$data['label']}}</label>
                                    <input required type="text" class="form-control lot-field-input" name="{{$data['label']}}"
                                        inputmode="decimal">
                                </div>
                            </div>
                            @elseif($data['type'] == 2)
                            <div class="form-group">
                                <label class="control-label">{{$data['label']}}</label>
                                <select required class="form-control" name="{{$data['label']}}">
                                    <option value="">Select Option</option>
                                    @php
                                        $values = explode(",",$data['values']);
                                    @endphp
                                    @foreach($values as $value)
                                        <option value="{{$value}}">{{$value}}</option>
                                    @endforeach

                                </select>
                            </div>
                            @endif
                            @endforeach
                            @endif

                            

                            <div class="lot-fields"
                                data-fields="[{&quot;id&quot;:&quot;level&quot;,&quot;type&quot;:1,&quot;conditions&quot;:[]},{&quot;id&quot;:&quot;stage&quot;,&quot;type&quot;:1,&quot;conditions&quot;:[]},{&quot;id&quot;:&quot;summary&quot;,&quot;type&quot;:2,&quot;conditions&quot;:[]},{&quot;id&quot;:&quot;desc&quot;,&quot;type&quot;:3,&quot;conditions&quot;:[]},{&quot;id&quot;:&quot;payment_msg&quot;,&quot;type&quot;:3,&quot;conditions&quot;:[]},{&quot;id&quot;:&quot;images&quot;,&quot;type&quot;:6,&quot;conditions&quot;:[]}]">
                                
                                <div class="lot-fields-multilingual">
                                    <ul class="nav nav-tabs">
                                        <!-- <li class="js-locale-switcher active" data-locale="en">
                                                        <a href="javascript:void(0)">English</a>
                                                    </li> -->
                                        <!-- <li class="js-locale-switcher" data-locale="ru">
                                                        <a href="javascript:void(0)">Russian</a>
                                                    </li>
                                                </ul> -->
                                        <div class="form-group lot-field bg-light-color modal-custom-bg-block modal-custom-bg-block-top"
                                            data-locale="en" data-id="summary">
                                            <label class="control-label">Short description</label>
                                            <input required type="text" class="form-control lot-field-input"
                                                name="short_description" value="💎【300 DIAMONDS】💎⭐BY ID⭐✅SAFE✅🎶OFFICIALLY🎶🎉100% GUARANTEED🎉">
                                            <p class="help-block">Appears directly on the table</p>
                                        </div>

                                        <div class="form-group lot-field bg-light-color modal-custom-bg-block"
                                            data-locale="en" data-id="desc">
                                            <label class="control-label">Detailed description</label>
                                            <textarea class="form-control lot-field-input" name="long_description"
                                                rows="7"></textarea>
                                            <p class="help-block">Optional</p>
                                        </div>

                                        <div class="form-group lot-field bg-light-color modal-custom-bg-block"
                                            data-locale="en" data-id="payment_msg">
                                            <label class="control-label">Message to the buyer after
                                                payment</label>
                                            <textarea class="form-control lot-field-input"
                                                name="buyer_message" rows="7"></textarea>
                                            <p class="help-block">Optional. Will be sent to each buyer.</p>
                                        </div>

                                </div>

                                <div class="form-group lot-field" data-id="images"><label
                                        class="control-label">Images</label>
                                    <input required type="file" multiple  name="image[]">
                                   
                                </div>
                            </div>
                            <!-- <div class="form-group">
                                <div class="checkbox"><label><input type="checkbox"
                                            name="auto_delivery"><i></i>Automatic delivery</label></div>
                            </div> -->
                            <!-- <div class="auto-delivery-box hidden">
                                <div class="form-group">
                                    <label class="control-label">Products</label>
                                    <textarea class="form-control textarea-lot-secrets" name="secrets" rows="7"
                                        placeholder="Product 1
Product 2
Product 3
..."></textarea>
                                    <p class="help-block">One line — one product. Products are issued from
                                        top to bottom; issued products are deleted. Use \n to insert a new
                                        line in the product description.</p>
                                </div>
                            </div> -->

                            <div class="form-group has-feedback w-200px">
                                <label class="control-label">Price for 1 pcs.</label>
                                <input type="text" required class="form-control" name="price" value="" inputmode="decimal"
                                    autocomplete="off">
                                <span class="form-control-feedback">$</span>
                            </div>

                            <div class="form-group has-feedback w-200px">
                                <label class="control-label">In&nbsp;stock</label>
                                <input type="text" required class="form-control" name="stock" placeholder="1" value=""
                                    inputmode="decimal" autocomplete="off">
                                <span class="form-control-feedback">pcs.</span>
                            </div>

                            <div class="form-group js-calc-table hidden">
                                <label>Price for buyers</label>
                                <table class="table-buyers-prices">
                                    <tbody class="js-calc-table-body">
                                    </tbody>
                                </table>
                            </div>

                            <div class="form-group">
                                <div class="checkbox"><label><input type="checkbox" name="status"
                                            checked><i></i>Active</label></div>
                            </div>

                            <div class="margin-top">
                                <button type="submit" class="btn btn-primary btn-block js-btn-save">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="wrapper-footer" style="position:relative;bottom:0px;text-align:center;width:100%">

    @endsection