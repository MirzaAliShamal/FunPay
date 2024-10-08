<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SellerAccount extends Model
{
    use HasFactory;

    protected $table = 'seller_accounts';
    
    protected $fillable = [
        'seller_id',
        'payment_method',
        'account_id',
        'status',
    ];
}
