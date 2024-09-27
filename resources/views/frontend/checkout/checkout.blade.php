@php
use Carbon\Carbon;
@endphp

@extends('layouts.frontend.app')

@section('content')
@if ($errors->any())
<div class="alert alert-danger">
 <ul>
  @foreach ($errors->all() as $error)
  <li>{{ $error }}</li>
  @endforeach
 </ul>
</div>
@endif

@if (session('success'))
<div class="alert alert-success">
 {{ session('success') }}
</div>
@endif

<section id="content-body">
 <div class="search-fade"></div>
 <div id="content" class="content-chips content-chips-offer">
  <div class="container">
   <div class="product-page product-page-with-chat">
    <div class="row">
     <div class="col-md-2 col-sm-3">
      <div class="back-link">
       <a href="{{route('subcatpage',$sub_category_slug)}}" class="js-back-link"><i class="fa fa-chevron-left"></i><span
         class="inside">General offer list</span></a>
      </div>
     </div>
     <div class="col-md-5 col-sm-9">
      <div class="page-content">
       <h1 class="page-header page-header-no-hr page-header-params">
        Ordering
       </h1>
       <div class="param-list">
        <div class="row">
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


         @php
         $seller_data = $seller_obj->whereid($offers->seller_id)->get()->toArray();
         $time_difference = getTimePassed($offers->created_at);

         $array = json_decode($offers->fields);
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

         for($i=0;$i<count($labels);$i++){ $searchKey=$labels[$i]; $result=getRelatedValue($searchKey, $labels,
          $values); $platform=explode("-", $result); @endphp <div class="col-xs-6">
          <div class="param-item">
           <h5>{{$searchKey}}</h5>
           <div class="text-bold">{{$platform[1]}}</div>
          </div>
        </div>


        @php
        }
        @endphp

        <div class="col-xs-12">
         <div class="param-item">
          <h5>Short Description</h5>
          <div class="text-bold">{{$offers->description}}</div>
         </div>
        </div>
        <div class="col-xs-12">
         <div class="param-item">
          <h5>Long Description</h5>
          <div class="text-bold lot-field-input">{!! $offers->long_description !!}</div>
         </div>
        </div>

        <div class="col-xs-12">
         <div class="param-item">
          <h5>Images</h5>
          <div class="text-bold lot-field-input">
           @if(!empty($offers->image))
           @php
           $images = json_decode($offers->image, true);
           @endphp
           @foreach($images as $image)
           <img src="{{ asset('storage/app/public/game_images/' . $image) }}" alt="Offer Image"
            class="img-thumbnail mt-2" style="width: 115px;">
           @endforeach
           @endif
          </div>
         </div>
        </div>
       </div>

       @php
       $seller_data = $seller_obj->whereid($offers->seller_id)->get()->toArray();
       $user_status = 0;
       if($seller_data[0]['is_login'] == 1){
       $user_status = 1;
       }
       $time_difference = getTimePassed($seller_data[0]['logout_date_time']);

       $messages = $message_obj->select('messages.*',
       'sender_user.name as sender_name',
       'receiver_user.name as receiver_name')
       ->join('users as sender_user', 'messages.sender_id', '=', 'sender_user.id')
       ->join('users as receiver_user', 'messages.receiver_id', '=', 'receiver_user.id')
       ->where(function($query) use ($offers) {
       $query->where('sender_id', session('user_id'))
       ->where('receiver_id', $offers->seller_id);
       })
       ->orWhere(function($query) use ($offers) {
       $query->where('sender_id', $offers->seller_id)
       ->where('receiver_id', session('user_id'));
       })
       ->get()->toArray();

       @endphp

       <div class="chat-float-container">
        <div class="js-chat-top"></div>
        <div class="chat chat-float mb35 a-affix" data-offer="chip:10714100-31-33-253-0" data-seller="10714100">
         <div class="chat-header">
          <div class="media media-user online">
           <div class="media-left">
            <a href="https://funpay.com/en/users/10714100/"><img
              src="https://sfunpay.com/s/avatar/5o/w6/5ow69mlhqlvt6fjhlzdy.jpg" alt="" width="50"
              class="img-circle" /></a>
           </div>
           <div class="media-body">
            <div class="media-user-name">
             <a href="https://funpay.com/en/users/10714100/">{{$seller_data[0]['name']}}</a>
            </div>
            <div class="media-user-status">
             @if($user_status == 1)
             Online
             @else
             <span style="color:gray">{{$time_difference}}</span>
             @endif
            </div>
           </div>
          </div>
          @if(session('user_id'))
          <div class="chat-header-controls">
           <a class="btn btn-info-icon btn-info-sm btn-gray chat-control" href="{{route('message')}}" title="Messages">
            <i class="far fa-clone icon"></i>
           </a>
          </div>
          @else
          <div class="chat-header-controls">
           <a class="btn btn-info-icon btn-info-sm btn-gray chat-control" href="{{route('user.seller.login')}}"
            title="Messages">
            <i class="far fa-clone icon"></i>
           </a>
          </div>
          @endif

         </div>

         <div class="chat-message-container">
          <div class="chat-message-list" id="chat-container">

           @if($messages)
           @foreach($messages as $message)
           @if($message['sender_id'] == session('user_id'))
           <div class="chat-msg-item chat-msg-with-head">

            <div class="chat-message">

             <div class="media-user-name">
              <a href="javascript:void(0)" class="chat-msg-author-link">{{$message['sender_name']}}</a>
              <div class="chat-msg-date" title="{{$message['created_at']}}">
               {{$message['created_at']}}</div>
             </div>
             <div class="chat-msg-body">
              <div class="chat-msg-text">{{$message['message']}}</div>
             </div>

            </div>
           </div>
           @else
           <div class="chat-msg-item chat-msg-with-head">

            <div class="chat-message">

             <div class="media-user-name">
              <a href="javascript:void(0)" class="chat-msg-author-link">{{$message['sender_name']}}</a>
              <div class="chat-msg-date" title="17 September, 13:26:58">
               {{$message['created_at']}}</div>
             </div>
             <div class="chat-msg-body">
              <div class="chat-msg-text">{{$message['message']}}</div>
             </div>

            </div>
           </div>
           @endif
           @endforeach
           @endif

          </div>
          @if(!$messages)
          <div class="chat-empty">
           <div class="seller-promo">
            <div class="rating-stars rating-5">
             <i class="fas"></i><i class="fas"></i><i class="fas"></i><i class="fas"></i><i class="fas"></i>
            </div>
            <div class="seller-promo-desc">
             <a href="#reviews">
              Total Number of Reviews:{{ $reviews->count() }}
             </a>
            </div>
            <div class="seller-promo-note">
             Contact the seller<br />before payment
            </div>
           </div>
          </div>
          @endif

         </div>
         <div class="chat-form" style="display:flex">

          <div class="chat-form-input">
           <div class="form-group" id="comments">
            <textarea class="form-control" id="message" name="content" cols="30" rows="1"
             placeholder="Message..."></textarea>
           </div>
          </div>
          <div class="chat-form-btn" style="display:flex">
           <input type="hidden" name="receiver_id" value="{{ $offers->seller_id }}" id="receiver_id">
           <input type="hidden" name="receiver_name" value="{{ $seller_data[0]['name'] }}" id="receiver_name">
           <input type="file" id="image" style="display: none;" />
           <button type="button" id="image-btn" class="btn btn-default chat-btn-image" data-size-max="7340032"
            data-size-max-str="7 MB">
            <i class="fa fa-paperclip"></i></button>
           @if(session('user_id'))
           <button type="button" onclick="sendMessage()" class="btn btn-gray btn-round">
            <i class="fa fa-arrow-right"></i>
           </button>
           @else
           <a href="{{route('user.seller.login')}}" class="btn btn-gray btn-round">
            <i class="fa fa-arrow-right"></i>
           </a>
           @endif
          </div>
         </div>
        </div>
       </div>

       <form action="https://funpay.com/en/orders/new" method="post" class="mb40">

        <!-- Chrome Autofill Bug Fix -->
        <div class="form-group hidden">
         <input type="text" class="form-control" name="username" autocomplete="username" value="" />
        </div>

        <div class="js-order-prices row row-20 row-inline flex-nowrap hidden">
         <div class="js-price-row col-sm-4 col-xs-6">
          <div class="param-item">
           <h5>
            Your account will be charged for&nbsp;<a
             href="https://funpay.freshdesk.com/en/support/solutions/articles/103000273180" target="_blank"><i
              class="fa fa-question-circle"></i></a>
           </h5>
           <div class="text-bold">
            <span class="text-xl js-balance-pay">0</span>&nbsp;<span class="js-balance-unit"></span>
            from&nbsp;<span class="js-balance-total">0</span>&nbsp;<span class="js-balance-unit"></span>
           </div>
          </div>
         </div>
         <div class="js-price-row hidden col-sm-4 col-xs-6">
          <div class="param-item">
           <h5 class="text-warning">
            Account&nbsp;payment discount
           </h5>
           <div class="text-bold text-warning">
            <span class="text-xl js-discount"></span>&nbsp;<span class="js-balance-unit"></span>
           </div>
          </div>
         </div>
         <div class="js-price-row col-sm-4 col-xs-6">
          <div class="param-item">
           <h5 class="w100">Remaining price</h5>
           <div class="text-bold">
            <span class="text-xl js-payment-sum">0</span>&nbsp;<span class="js-payment-unit"></span>
           </div>
          </div>
         </div>
        </div>

        <div class="form-group">
         <button type="submit" class="btn btn-primary btn-block">
          Buy
         </button>
         <p class="help-block">
          The seller will not be able to receive the payment
          until you confirm that he has fulfilled his
          obligations.
         </p>
        </div>
       </form>
      </div>

      <hr class="hidden-xs" />

      {{-- Review section starting --}}

      <div class="review-list" id="reviews">
       <div class="param-item mb10 mt35">
        <h5 class="mb10">Seller's Rating</h5>
        <div class="row row-20 row-inline">
         <div class="col-lg-8 mb10">
          <div class="rating-value text-nowrap inline-block-vat mr10">
           <span class="big">{{ $averageRating?'review':'0' }}</span>
           <span class="inline-block-vat">out of 5</span>
          </div>
          <div class="rating-full inline-block-vat">
           @for ($i = 5; $i >= 1; $i--)
           <div class="rating-full-item{{ $i }}">
            <div class="rating-mini"></div>
            <div class="rating-progress">
             <div style="width: {{ $reviews->count() > 0 ? ($ratingsCount[$i] / $reviews->count()) * 100 : 0 }}%"></div>
            </div>
           </div>
           @endfor
          </div>
         </div>
         <div class="col-lg-4 col-xs-12 mb10">
          <div class="text-mini text-light mb5">
           Total Number of Reviews:{{ $reviews->count() }}
          </div>
          <div class="dyn-table-filter reviews-filter">
           <a class="btn btn-default btn-block dropdown-toggle" data-toggle="dropdown" role="button"
            aria-haspopup="true" aria-expanded="false">
            <span class="filter-text">All reviews</span>
            <span class="caret"></span>
           </a>
           <ul class="dropdown-menu">
            <!-- Add filter options here -->
           </ul>
          </div>
         </div>
        </div>
       </div>
       <div class="dyn-table">
        <div class="dyn-table-body">
         @foreach($reviews as $review)
         <div class="review-container">
          <div class="review-item">
           <div class="review-item-row">
            <div class="review-compiled-review">
             <div class="review-item-user">
              <div class="review-item-photo">
               <img src="{{ asset('public/assets/frontend/img/avatar.png') }}" alt="User Avatar" />
              </div>

              <div class="review-item-rating pull-right hidden-xs">
               <div class="rating">
                @for ($star = 1; $star <= 5; $star++) <i
                 class="fa {{ $star <= $review->rating ? 'fa-star' : 'fa-star-o' }}"></i>
                 @endfor
               </div>
              </div>
              <div class="review-item-date">
               {{ $review->created_at->diffForHumans() }}
              </div>
             </div>
             <div class="review-item-detail text-black">
              {{ $review->comment }}
             </div>
            </div>
           </div>
          </div>
         </div>
         @endforeach
        </div>
       </div>

       @if(!auth()->id()) <!-- Check if the user has not reviewed this offer -->
       <form method="post" class="dyn-table-form" action="{{ route('reviews.store') }}">
        @csrf
        <input type="hidden" name="offer_id" value="{{ $offers->id }}" />
        <div class="form-group">
         <textarea name="comment" class="form-control" placeholder="Write your review..."></textarea>
        </div>
        <div class="form-group">
         <select name="rating" class="form-control">
          <option value="1">1 Star</option>
          <option value="2">2 Stars</option>
          <option value="3">3 Stars</option>
          <option value="4">4 Stars</option>
          <option value="5">5 Stars</option>
         </select>
        </div>
        <button type="submit" class="btn btn-primary">Submit Review</button>
       </form>
       @endif

       <button type="button" class="btn btn-default btn-block margin-top dyn-table-continue">
        Show more reviews
       </button>
      </div>




      {{-- ending review section --}}

     </div>
    </div>
   </div>
  </div>
 </div>
 </div>
</section>

@endsection

@section('script')
<script>

 // Subscribe to a channel for the receiver
 var receiverId = $('#receiver_id').val();
 var receiverName = $('#receiver_name').val();
 var senderId = {{ session('user_id')}};
 var senderName = '{{session('user_name')}}';

 // Function to append the new message to the chat container
 function appendMessage(message, senderName) {

  var chatContainer = $('#chat-container');
  var newMessageHtml = `
        <div class="chat-msg-item chat-msg-with-head" id="message-${message.id}">
            <div class="chat-message">
                <div class="media-user-name">
                    <a href="javascript:void(0)" class="chat-msg-author-link">${senderName}</a>
                    <div class="chat-msg-date" title="${message.created_at}">
                        ${new Date(message.created_at).toLocaleDateString('en-GB', {
   year: 'numeric',
   month: '2-digit',
   day: '2-digit'
  }).split('/').reverse().join('-')}
                    </div>
                </div>
                <div class="chat-msg-body">
                    <div class="chat-msg-text">${message.message}</div>
                </div>
            </div>
        </div>
    `;
  chatContainer.append(newMessageHtml);
  chatContainer.scrollTop(chatContainer[0].scrollHeight);
 }

 // Sending a message via AJAX and appending the sent message immediately
 $('#message').keypress(function (event) {
  // Check if the "Enter" key was pressed (key code 13)
  if (event.which === 13 && !event.shiftKey) {
   event.preventDefault(); // Prevent the default action of adding a new line

   // Call the send message function
   sendMessage();
  }
 });

 function sendMessage() {
  $(".chat-empty").hide();
  var message = $('#message').val();
  var image = $('#image')[0].files[0]; // This could be undefined if no image is selected
  var formData = new FormData();
  formData.append('message', message);
  formData.append('receiver_id', receiverId);
  if (image) {
   formData.append('image', image);
  }

  // CSRF token
  formData.append('_token', '{{ csrf_token() }}');

  $.ajax({
   url: '{{ route("send.message") }}',
   method: 'POST',
   data: formData,
   processData: false,
   contentType: false,
   success: function (response) {
    $('#message').val(''); // Clear message input
    $('#image').val(''); // Clear file input

    appendMessage(response.message, '{{ session("user_name") }}');
   }
  });
 }
 ////// Get Current User Messages //////////////////////////////////

 function getCurrentUserMessage() {

  jQuery.ajaxSetup({
   headers: {
    'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
   }
  });
  $.ajax({
   url: '{{ route("chat.runner") }}',
   method: 'POST',
   // headers: {
   //     'X-Socket-Id': pusher.connection.socket_id
   // },
   data: {
    send_by: receiverId,
   },
   success: function (response) {
    if (response.data) {
     for (let index = 0; index < response.data.length; index++) {
      appendMessage(response.data[index], receiverName);
     }
    }


    // appendMessage(response.message, '{{ session("user_name") }}');

   }
  });
 }

 // Update counter every few seconds
 setInterval(getCurrentUserMessage, 3000);

 // When the button is clicked, trigger the file input
 $('#image-btn').click(function () {
  $('#image').click();
 });

 // Optionally, handle the file selection event
 $('#image').change(function () {
  var selectedFile = this.files[0];
  console.log(selectedFile); // Do something with the selected file
 });
</script>
@endsection