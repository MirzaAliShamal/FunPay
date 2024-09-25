<div class="message-icon">
    <i class="fas fa-envelope"></i>
    <span id="messageCounter" class="badge badge-danger" style="display: none;">0</span>
</div>

<div>
    <h2>Chat</h2>
    <div id="messages"></div>
    <input type="hidden" name="receiver_id" value="{{ session('user_id') }}" id="receiver_id">
    <input type="text" id="message" placeholder="Type your message...">
    <input type="file" id="image">
    <button id="send">Send</button>
</div>

