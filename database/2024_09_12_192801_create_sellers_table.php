<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSellersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sellers', function (Blueprint $table) {
            $table->id(); // Auto-incrementing ID
            $table->string('full_name'); // Full name of the seller
            $table->string('country'); // Country of the seller
            $table->string('email'); // Email address (unique)
            $table->string('messenger')->nullable(); // Instant messenger (optional)
            $table->string('messenger_link')->nullable(); // Messenger link (optional)
            $table->date('dob'); // Date of birth
            $table->string('phone_number'); // Phone number
            $table->string('country_code'); // Country code for phone number
            $table->string('selfie'); // Add this line
            $table->string('id_card_front'); // Add this line
            $table->string('id_card_back'); // Add this line
            $table->text('games_products'); // Description of products/services
            $table->text('other_info')->nullable(); // Other information (optional)
            $table->string('stock_source'); // Source of stock
            $table->boolean('selling_elsewhere')->nullable(); // Whether selling elsewhere
            $table->integer('status')->default(0)->nullable();
            $table->timestamps(); // Created at and updated at timestamps
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sellers');
    }
}
