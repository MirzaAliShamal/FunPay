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
                        <h1 class="page-header page-header-no-hr">Edit offer</h1>
                        <form action="{{route('update.frontend.offer',$offer['id'])}}" method="post" enctype="multipart/form-data"
                            class="form-offer-editor">
                            @csrf
                            @if($offer_data)
                            @php
                            function getRelatedValue($searchKey, $keysArray, $valuesArray)
                            {

                            $index = array_search($searchKey, $keysArray);
                            if ($index !== false && isset($valuesArray[$index])) {
                            return $valuesArray[$index];

                            }
                            }

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

                            @endphp
                           
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

                            $result = getRelatedValue($data['label'], $labels, $values);
                            $platform = explode("-", $result);

                            @endphp
                            <input type="hidden" name="fields[]" value="{{$data['label']}}">
                            @if($data['type'] == 1)

                            <div class="form-group">
                                <div class="form-group lot-field" data-id="{{$data['label']}}"><label
                                        class="control-label">{{$data['label']}}</label>
                                    <input required type="text" class="form-control lot-field-input"
                                        name="{{$data['label']}}" inputmode="decimal" value="{{$platform[1]}}">
                                </div>
                            </div>
                            @elseif($data['type'] == 2)
                            <div class="form-group">
                                <label class="control-label">{{$data['label']}}</label>
                                <select required class="form-control" name="{{$data['label']}}">
                                    <option value="">Select Option</option>
                                    @php
                                    $values1 = explode(",",$data['values']);
                                    @endphp
                                    @foreach($values1 as $value)
                                    <option value="{{$value}}" @if($platform[1]==$value) selected @endif>{{$value}}
                                    </option>
                                    @endforeach

                                </select>
                            </div>
                            @endif
                            @endforeach
                            @endif



                            <div class="lot-fields">

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
                                                name="short_description" value="{{$offer['description']}}">
                                            <p class="help-block">Appears directly on the table</p>
                                        </div>

                                        <div class="form-group lot-field bg-light-color modal-custom-bg-block"
                                            data-locale="en" data-id="desc">
                                            <label class="control-label">Detailed description</label>
                                            <textarea class="form-control lot-field-input" name="long_description"
                                                rows="7">{{$offer['long_description']}}</textarea>
                                            <p class="help-block">Optional</p>
                                        </div>

                                        <div class="form-group lot-field bg-light-color modal-custom-bg-block"
                                            data-locale="en" data-id="payment_msg">
                                            <label class="control-label">Message to the buyer after
                                                payment</label>
                                            <textarea class="form-control lot-field-input" name="buyer_message"
                                                rows="7">{{$offer['buyer_message']}}</textarea>
                                            <p class="help-block">Optional. Will be sent to each buyer.</p>
                                        </div>

                                </div>

                                <div class="form-group lot-field" data-id="images" style="position:relative">
                                    <label class="control-label">Images</label>
                                    <input type="file" multiple name="image[]">
                                    @if($offer['image'])
                                    @php 
                                        $old_images = implode(',',json_decode($offer['image'], true));
                                    @endphp
                                    <input type="hidden" name="old_images" value="{{$old_images}}">
                                    @php
                                    $images = json_decode($offer['image'], true);
                                    $left = 81;
                                    @endphp
                                    @foreach($images as $m=>$image)
                                    @php
                                    if($m != 0){
                                    $left += 118;
                                    }

                                    @endphp
                                    <i onclick="deleteImage('{{route('offer.deleteImage')}}','{{$image}}','{{$offer['id']}}')" class="fas fa-trash" style="position:absolute;margin-top: 14px;left: {{$left}}px;background: black;padding: 6px;border-radius: 4px;color: white;"></i>


                                    <img src="{{ asset('storage/app/public/game_images/' . $image) }}" alt="Offer Image"
                                        class="img-thumbnail mt-2" style="width: 115px;">
                                    @endforeach
                                    @endif
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
                                <input type="text" required class="form-control" name="price"
                                    value="{{$offer['price']}}" inputmode="decimal" autocomplete="off">
                                <span class="form-control-feedback">$</span>
                            </div>

                            <div class="form-group has-feedback w-200px">
                                <label class="control-label">In&nbsp;stock</label>
                                <input type="text" required class="form-control" name="stock" placeholder="1"
                                    value="{{$offer['stock']}}" inputmode="decimal" autocomplete="off">
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
                                            @if($offer['status']==1) checked @endif><i></i>Active</label></div>
                            </div>

                            <div class="margin-top">
                                <button type="submit" class="btn btn-primary btn-block js-btn-save">Update</button>
                                <a href="javascript:void(0);" class="btn btn-danger btn-block js-btn-save"
                                    onclick="if(confirm('Are you sure you want to delete this?')){ window.location.href = '{{ route('offer.delete', $offer['id']) }}'; }">
                                    Delete
                                </a>

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

    @section('script')
<script>
    function deleteImage(siteurl, image, id){
    var confirmation = confirm('Are you sure you want to delete?');
    if (confirmation) {
        jQuery.ajaxSetup({
            headers: {
                    'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
            }
        });
    
        $.ajax({

            type: "GET",
            url: siteurl,
            data: {
                id: id,
                image: image,
            },
            // method: 'POST', //Post method,
            // dataType: 'json',
            success: function(response) {
                location.reload();
            }
        
        });
    }

}
</script>

@endsection