<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('messages', function (Blueprint $table) {
            $table->id();
            $table->integer('sender_id'); // ID of the user sending the message
            $table->integer('receiver_id'); // ID of the user receiving the message
            $table->text('message'); // The message content
            $table->boolean('is_read')->default(0); // Whether the message has been read
            $table->timestamps();
    
           
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('messages');
    }
};
