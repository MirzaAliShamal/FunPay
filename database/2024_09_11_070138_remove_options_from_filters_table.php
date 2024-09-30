<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RemoveOptionsFromFiltersTable extends Migration
{
    public function up()
    {
        Schema::table('filters', function (Blueprint $table) {
            $table->dropColumn('options'); // Drop the 'options' column
        });
    }

    public function down()
    {
        Schema::table('filters', function (Blueprint $table) {
            $table->string('options')->nullable(); // Add the column back if rolling back
        });
    }
}
