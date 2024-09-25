<?php 
use Carbon\Carbon;
?>
@extends('layouts.frontend.app')

@section('content')
<section id="content-body">
    <div class="search-fade" style="height: 300px;"></div>
    <div id="content" class="content-chat content-chat-index">
        <div class="chat-full-container">
            <div class="container">
                <div class="chat-full chat-bookmarks-nonempty moved" style="height: 260px;">
                    <div class="chat-contacts">
                        <div class="chat-full-header">
                            <h1>Messages <span class="badge badge-primary">1</span></h1>
                        </div>
                        @if($chattedUsers)
                        @foreach($chattedUsers as $user)
                        <!-- <div class="contact-list custom-scroll"> -->
                        <div class="custom-scroll">
                            <a href="https://funpay.com/en/chat/?node=130219810" class="contact-item active"
                                data-id="130219810" data-node-msg="2525428153" data-user-msg="2525428153">
                                <div class="contact-item-photo">
                                    <div class="avatar-photo"
                                        style="background-image: url({{asset('public/assets/frontend/img/avatar.png')}});">
                                    </div>
                                </div>
                                <div class="media-user-name">{{$user->name}}</div>
                                <div class="contact-item-message">{{$user->message}}</div>
                                <div class="contact-item-time">{{Carbon::parse($user->created_at)->format('d M')}}
                                </div>
                            </a>
                        </div>
                        @endforeach
                        @endif
                    </div>

                    <div class="js-chat-top"></div>
                    @php
                    function getTimePassed($date)
                    {
                    $createdAt = Carbon::parse($date);
                    return $createdAt->diffForHumans();
                    }
                    $time_difference = getTimePassed(session('logout_date_time'));
                    @endphp
                    <div class="chat chat-float" data-id="130219810" data-name="users-12206051-12338995"
                        data-user="12338995" data-tag="yr1kuvz2" data-bookmarks-tag="ci8qoj0t">
                        <div class="chat-header">
                            <div class="media media-user offline">
                                <div class="media-left">
                                    <a href="https://funpay.com/en/users/12206051/"><img
                                            src="{{asset('public/assets/frontend/img/avatar.png')}}" alt="" width="50"
                                            class="img-circle"></a>
                                </div>
                                <div class="media-body">
                                    <div class="media-user-name"><a
                                            href="https://funpay.com/en/users/12206051/">{{session('user_name')}}</a>
                                    </div>
                                    <div class="media-user-status">
                                        @if(session('is_login') == 1)
                                        <span style="color: #7ed320;">Online</span>
                                        @else
                                        {{$time_difference}}
                                        @endif
                                    </div>
                                </div>
                            </div>
                            <div class="chat-header-controls">
                                <!-- <span class="notice-button-container chat-control" data-color="gray">
                                    <button type="button" class="btn btn-info-icon btn-info-sm btn-gray">
                                        <i class="far fa-bell icon"></i>
                                        <span class="inside hidden-md hidden-xs">Enable<br>notifications</span>
                                    </button>
                                </span> -->
                                <!-- <div class="dropdown inline-block">
                                    <button class="btn btn-info-icon btn-info-sm btn-gray" type="button"
                                        data-toggle="dropdown">
                                        <i class="fa fa-ellipsis-h icon"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li>
                                            <a href="https://funpay.freshdesk.com/en/support/tickets/new"
                                                target="_blank">Report</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)" class="form-ajax-simple"
                                                data-action="https://funpay.com/en/chat/mute"
                                                data-fields="{&quot;node_id&quot;:130219810,&quot;mute&quot;:1}">Block</a>
                                        </li>
                                    </ul>
                                </div> -->
                            </div>
                            <a class="chat-back"><i class="fa fa-chevron-left"></i></a>
                        </div>

                        <div class="chat-panel-mobile hidden">
                        </div>

                        <div class="chat-message-container">
                            <div class="chat-message-list" id="chat-container">
                                <!-- <div class="chat-msg-item chat-msg-with-head" id="message-2517792441">
                                    <div class="chat-message-list-date"><span class="inside">17 September</span></div>

                                    <div class="chat-message">



                                        <div class="media-user-name">
                                            FunPay <span
                                                class="chat-msg-author-label label label-primary">notification</span>
                                            <div class="chat-msg-date" title="17 September, 13:26:58">17.09.24</div>
                                        </div>

                                        <div class="chat-msg-body">
                                            <div class="alert alert-with-icon alert-info" role="alert">
                                                <i class="fas fa-info-circle alert-icon"></i>
                                                <div class="chat-msg-text">Dear vendors, <strong>do not rely on chat
                                                        messages</strong>! Before you process an order, <strong>you
                                                        should always check whether you've been paid</strong> in «<a
                                                        href="https://funpay.com/en/orders/trade" target="_blank"
                                                        rel="nofollow noopener">My sales</a>» section.</div>
                                            </div>


                                        </div>

                                    </div>
                                </div> -->

                                @if($messages)
                                @foreach($messages as $message)
                                @if($message->sender_id == session('user_id'))

                                <div class="chat-msg-item chat-msg-with-head" id="message-2517792442">

                                    <div class="chat-message">



                                        <div class="media-user-name">
                                            <a href="javascript:void(0)"
                                                class="chat-msg-author-link">{{$message->sender_name}}</a>
                                            <div class="chat-msg-date" title="{{$message->created_at}}">
                                                {{Carbon::parse($message->created_at)->format('Y-m-d')}}</div>
                                        </div>

                                        <div class="chat-msg-body">
                                            <div class="chat-msg-text">{{$message->message}}</div>


                                        </div>

                                    </div>
                                </div>
                                @else

                                <div class="chat-msg-item chat-msg-with-head" id="message-2517792442">

                                    <div class="chat-message">



                                        <div class="media-user-name">
                                            <a href="javascript:void(0)"
                                                class="chat-msg-author-link">{{$message->sender_name}}</a>
                                            <div class="chat-msg-date" title="{{$message->created_at}}">
                                                {{Carbon::parse($message->created_at)->format('Y-m-d')}}</div>
                                        </div>

                                        <div class="chat-msg-body">
                                            <div class="chat-msg-text">{{$message->message}}</div>


                                        </div>

                                    </div>
                                </div>

                                @endif
                                @endforeach
                                @endif

                            </div>
                        </div>

                        <div class="chat-form" style="display:flex">
                            <!-- <form action="https://funpay.com/en/chat/message" method="post"> -->
                            <div class="chat-form-input">
                                <div class="form-group" id="comments">
                                    <textarea class="form-control" id="message" name="content" cols="30" rows="1"
                                        placeholder="Message..." autofocus=""></textarea>
                                    <div class="hiddendiv"></div>
                                </div>
                            </div>
                            <div class="chat-form-btn" style="display:flex">
                                <input type="hidden" name="receiver_id" value="{{ $firstChattedUser->id }}"
                                    id="receiver_id">
                                <input type="file" id="image" style="display: none;" />
                                <button type="button" id="image-btn" class="btn btn-default chat-btn-image"
                                    data-size-max="7340032" data-size-max-str="7 MB">
                                    <i class="fa fa-paperclip"></i></button>
                                <button type="button" id="send" class="btn btn-gray btn-round"><i
                                        class="fa fa-arrow-right"></i></button>
                            </div>
                            <!-- </form> -->
                        </div>
                    </div>
                    @php

                    $time_difference = getTimePassed(session('created_at'));
                    @endphp
                    <div class="chat-detail">
                        <div class="chat-detail-list custom-scroll">
                            <div class="param-item">
                                <h5>Registration date</h5>
                                <div>
                                    {{Carbon::parse(session('created_at'))->format('d M Y')}}<br>
                                    {{$time_difference}} </div>
                            </div>
                            <div class="param-item chat-panel hidden" data-type="c-p-u" data-id="12206051"
                                data-tag="hi1zmwhb">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection


@section('script')
<script src="https://js.pusher.com/7.0/pusher.min.js"></script>
<script>
// Initialize Pusher for real-time functionality
Pusher.logToConsole = true;
var pusher = new Pusher('{{ env("PUSHER_APP_KEY") }}', {
    cluster: '{{ env("PUSHER_APP_CLUSTER") }}'
});


// Subscribe to a channel for the receiver
var receiverId = $('#receiver_id').val();
var senderId = {{session('user_id')}};

var channelName = 'chat.' + senderId + '.' + receiverId;
var channel = pusher.subscribe(channelName);

// Add the subscription error listener
channel.bind('pusher:subscription_succeeded', function() {
    console.log('Successfully subscribed to the '+channelName);
});

// Listen for the MessageSent event and append the message to the chat container
channel.bind('message.sent', function(data) {
    console.log("Received message data:", data);
    // if (data && data.message) {
    //     appendMessage(data.message, data.sender_name);
    // } else {
    //     console.error("Message data is undefined or invalid");
    // }
});


channel.bind('pusher:subscription_error', function(status) {
    console.error('Subscription error:', status);
});

// Function to append the new message to the chat container
function appendMessage(message, senderName) {
    console.log("please run this function");
    
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
$('#send').click(function() {
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
        headers: {
            'X-Socket-Id': pusher.connection.socket_id
        },
        data: formData,
        processData: false,
        contentType: false,
        success: function(response) {
            $('#message').val('');
            $('#image').val(''); 

            appendMessage(response.message, '{{ session("user_name") }}');
            
        }
    });
});


// Message Counter
function updateMessageCounter() {
    fetch('{{ route("unread.messages.count") }}')
        .then(response => response.json())
        .then(data => {
            let counter = document.getElementById('messageCounter');
            if (data.unread_count > 0) {
                counter.innerText = data.unread_count;
                counter.style.display = 'inline-block';
            } else {
                // counter.style.display = 'none';
            }
        });
}

// Update counter every few seconds
setInterval(updateMessageCounter, 3000);

document.addEventListener('DOMContentLoaded', function() {
    updateMessageCounter();
});

// document.querySelector('.message-icon').addEventListener('click', function() {
//     fetch('{{ route("mark.messages.read") }}', {
//         method: 'POST',
//         headers: {
//             'X-CSRF-TOKEN': '{{ csrf_token() }}',
//             'Content-Type': 'application/json',
//         }
//     }).then(() => {
//         document.getElementById('messageCounter').style.display = 'none';
//     });
// });

// When the button is clicked, trigger the file input
$('#image-btn').click(function() {
    $('#image').click();
});

// Optionally, handle the file selection event
$('#image').change(function() {
    var selectedFile = this.files[0];
    console.log(selectedFile); // Do something with the selected file
});
</script>
@endsection