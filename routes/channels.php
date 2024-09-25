<?php 

use Illuminate\Support\Facades\Broadcast;

Broadcast::channel('chat.{senderId}.{receiverId}', function ($user, $senderId, $receiverId) {
    return session('user_id') == $senderId || session('user_id') == $receiverId; 
});

