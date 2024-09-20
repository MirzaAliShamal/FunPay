<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Offer extends Model
{
    use HasFactory;

    protected $fillable = [
        'fields', 
        'description', 
        'long_description', 
        'buyer_message', 
        'price', 
        'stock', 
        'image', 
        'status',
        'seller_id',
        'sub_category_id',
        'offer_category_id'
    ];
    
}
