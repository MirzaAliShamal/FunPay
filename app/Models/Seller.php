<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seller extends Model
{
    use HasFactory;

    // Specify the table name if it's not the plural of the model name
    protected $table = 'sellers';

    // Define the fillable properties for mass assignment
    protected $fillable = [
        'full_name',
        'country',
        'email',
        'password',
        'messenger',
        'messenger_link',
        'dob',
        'phone_number',
        'country_code',
        'selfie',
        'id_card_front',
        'id_card_back',
        'games_products',
        'other_info',
        'stock_source',
        'selling_elsewhere',
    ];

    protected $hidden = [
        'password',
    ];


}
