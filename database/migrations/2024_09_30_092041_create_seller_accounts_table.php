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
        Schema::create('seller_accounts', function (Blueprint $table) {
            $table->id();
            $table->integer('seller_id')->nullable();
            $table->string('payment_method')->nullable();
            $table->string('account_id')->nullable();
            $table->integer('status')->default(1)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('seller_accounts');
    }
};
