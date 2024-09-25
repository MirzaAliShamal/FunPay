<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Events\MessageSent;
use App\Models\Message;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;


class MessageController extends Controller
{
   
    public function index(){
        if(!session('user_id')){
            return redirect()->route('user.seller.login');
        }

        $seller_or_buyer_id = session('user_id');
        $chattedUsers = DB::table('messages as m')
        ->select('users.id', 'users.name', 'm.message', 'm.created_at','m.is_read')
        ->join('users', function($join) {
            $join->on('users.id', '=', 'm.sender_id')
                ->orOn('users.id', '=', 'm.receiver_id');
        })
        ->where(function($query) use ($seller_or_buyer_id) {
            $query->where('m.sender_id', $seller_or_buyer_id)
                ->orWhere('m.receiver_id', $seller_or_buyer_id);
        })
        ->where('users.id', '<>', $seller_or_buyer_id)
        ->whereIn('m.id', function($subquery) use ($seller_or_buyer_id) {
            $subquery->select(DB::raw('MAX(id)'))
                ->from('messages')
                ->where(function($query) use ($seller_or_buyer_id) {
                    $query->where('sender_id', $seller_or_buyer_id)
                    // $query->where('receiver_id', $seller_or_buyer_id);
                        ->orWhere('receiver_id', $seller_or_buyer_id);
                })
                ->groupBy(DB::raw("LEAST(sender_id, receiver_id), GREATEST(sender_id, receiver_id)"));
        })
        ->distinct()
        ->orderBy('is_read','ASC')
        ->get()
        ->toArray();

        $firstChattedUser = DB::table('messages')
        ->select('users.id', 'users.name','users.logout_date_time','users.is_login','messages.sender_id','messages.receiver_id')
        ->join('users', function($join) {
            $join->on('users.id', '=', 'messages.sender_id')
                ->orOn('users.id', '=', 'messages.receiver_id');
        })
        ->where(function($query) use ($seller_or_buyer_id) {
            $query->where('messages.sender_id', $seller_or_buyer_id)
                ->orWhere('messages.receiver_id', $seller_or_buyer_id);
        })
        ->where('users.id', '<>', $seller_or_buyer_id)
        ->distinct()
        ->first();
        // echo "<pre>";
        // print_r($firstChattedUser);
        // echo "<pre>";
        // print_r($chattedUsers);
        // exit;
        

        $messages = null;
        $user_data = null;
        if($firstChattedUser){
            $user_data = User::whereid($firstChattedUser->id)->first();
            $messages = DB::table('messages')
            ->select(
                'messages.*',
                'sender.name as sender_name',  // Sender's name
                'receiver.name as receiver_name' // Receiver's name
            )
            ->join('users as sender', 'sender.id', '=', 'messages.sender_id') // Join for sender
            ->join('users as receiver', 'receiver.id', '=', 'messages.receiver_id') // Join for receiver
            ->where(function($query) use ($firstChattedUser, $seller_or_buyer_id) {
                $query->where('sender_id', $seller_or_buyer_id)
                    ->where('receiver_id', $firstChattedUser->id);
            })
            ->orWhere(function($query) use ($firstChattedUser, $seller_or_buyer_id) {
                $query->where('sender_id', $firstChattedUser->id)
                    ->where('receiver_id', $seller_or_buyer_id);
            })
            ->orderBy('messages.created_at', 'asc') // You can use 'desc' if you want the latest messages first
            ->get()
            ->toArray();

            // if($messages){
            //     foreach($messages as $d){
            //         $array = array(
            //             'is_read' => 1
            //         );
            //         Message::where('id', $d->id)->update($array);
            //     }
            // } 
        }
        // echo "<pre>";
        // print_r($firstChattedUser);
        // exit;
       
        return view('frontend.chat.message',compact('chattedUsers','firstChattedUser','messages','user_data'));
    }
    public function sendMessage(Request $request)
    {
        $message = new Message();
        $message->sender_id = session('user_id');
        $message->receiver_id = $request->receiver_id;

        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('images', 'public');
            $imageName = basename($imagePath);
            $message->image = $imageName; // Save the path to the image in the database
        } else {
            $message->message = $request->message;
        }

        $message->save();
        event(new MessageSent($request->message, session('user_id'), session('user_name'), $request->receiver_id));
        // broadcast(new MessageSent($request->message, session('user_id'), $request->receiver_id))->toOthers();

        return response()->json(['message' => $message], 201);
    }

    public function getUnreadMessageCount()
    {
        $count = Message::where('receiver_id', Auth::id())
                        ->where('is_read', false)
                        ->count();
        return response()->json(['unread_count' => $count]);
    }

    public function markMessagesAsRead()
    {
        Message::where('receiver_id', Auth::id())
               ->update(['is_read' => true]);

        return response()->json(['status' => 'Messages marked as read']);
    }


    public function chatListing()
    {
        $seller_or_buyer_id = session('user_id');
        $chattedUsers = DB::table('messages')
        ->select('users.id', 'users.name')
        ->join('users', function($join) {
            $join->on('users.id', '=', 'messages.sender_id')
                ->orOn('users.id', '=', 'messages.receiver_id');
        })
        ->where(function($query) use ($seller_or_buyer_id) {
            $query->where('messages.sender_id', $seller_or_buyer_id)
                ->orWhere('messages.receiver_id', $seller_or_buyer_id);
        })
        ->where('users.id', '<>', $seller_or_buyer_id)
        ->distinct()
        ->get()
        ->toArray();

    }

    public function getCurrentUserMessage(Request $request){
        $sendBy = $request->send_by;
        $data = Message::select('message','id','created_at','is_read')->where('receiver_id', session('user_id'))
                        ->where('sender_id', $sendBy)
                        ->where('is_read', 0)
                        ->get()->toArray();

        // $count = Message::where('receiver_id', session('user_id'))
        // ->where('is_read', 0)
        // ->count();

        if($data){
            foreach($data as $d){
                $array = array(
                    'is_read' => 1
                );
                Message::where('id', $d['id'])->update($array);
            }
        }              
        
        // return response()->json(['status' => 'Messages marked as read','data' => $data,'count' => $count]);
        return response()->json(['status' => 'Messages marked as read','data' => $data]);
    }

    public function getSelectedUserMessage($seller_or_buyer_id){

        
        if(!session('user_id')){
            return redirect()->route('user.seller.login');
        }
        $current_user = session('user_id');

        $user_data = User::whereid($seller_or_buyer_id)->first();

        $firstChattedUser = DB::table('messages')
        ->select('users.id', 'users.name','users.logout_date_time','users.is_login','messages.sender_id','messages.receiver_id')
        ->join('users', function($join) {
            $join->on('users.id', '=', 'messages.sender_id')
                ->orOn('users.id', '=', 'messages.receiver_id');
        })
        ->where(function($query) use ($seller_or_buyer_id) {
            $query->where('messages.sender_id', $seller_or_buyer_id)
                ->orWhere('messages.receiver_id', $seller_or_buyer_id);
        })
        ->where('users.id', '<>', $seller_or_buyer_id)
        ->distinct()
        ->first();

        
        $messages = null;
        if($firstChattedUser){
            $messages = DB::table('messages')
            ->select(
                'messages.*',
                'sender.name as sender_name',  // Sender's name
                'receiver.name as receiver_name' // Receiver's name
            )
            ->join('users as sender', 'sender.id', '=', 'messages.sender_id') // Join for sender
            ->join('users as receiver', 'receiver.id', '=', 'messages.receiver_id') // Join for receiver
            ->where(function($query) use ($firstChattedUser, $seller_or_buyer_id) {
                $query->where('sender_id', $seller_or_buyer_id)
                    ->where('receiver_id', $firstChattedUser->id);
            })
            ->orWhere(function($query) use ($firstChattedUser, $seller_or_buyer_id) {
                $query->where('sender_id', $firstChattedUser->id)
                    ->where('receiver_id', $seller_or_buyer_id);
            })
            ->orderBy('messages.created_at', 'asc') // You can use 'desc' if you want the latest messages first
            ->get()
            ->toArray();
            
            // echo "<pre>";
            // print_r($messages);
            // exit;
            if($messages){
                foreach($messages as $d){
                    $array = array(
                        'is_read' => 1
                    );
                    Message::where('id', $d->id)->update($array);
                }
            } 
        }

        $chattedUsers = DB::table('messages as m')
        ->select('users.id', 'users.name', 'm.message', 'm.created_at','m.is_read')
        ->join('users', function($join) {
            $join->on('users.id', '=', 'm.sender_id')
                ->orOn('users.id', '=', 'm.receiver_id');
        })
        ->where(function($query) use ($current_user) {
            $query->where('m.sender_id', $current_user)
                ->orWhere('m.receiver_id', $current_user);
        })
        ->where('users.id', '<>', $current_user)
        ->whereIn('m.id', function($subquery) use ($current_user) {
            $subquery->select(DB::raw('MAX(id)'))
                ->from('messages')
                ->where(function($query) use ($current_user) {
                    $query->where('sender_id', $current_user)
                    // $query->where('receiver_id', $current_user);
                        ->orWhere('receiver_id', $current_user);
                })
                ->groupBy(DB::raw("LEAST(sender_id, receiver_id), GREATEST(sender_id, receiver_id)"));
        })
        ->distinct()
        ->orderBy('is_read','ASC')
        ->get()
        ->toArray();
        
        return view('frontend.chat.message',compact('chattedUsers','firstChattedUser','messages','user_data'));

    }
}
