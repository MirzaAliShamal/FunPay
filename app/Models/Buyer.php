<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Buyer extends Model
{
    use HasFactory;

    // Specify the table name if it's not the plural form of the model name
    protected $table = 'buyers';

    // Specify the fillable fields to allow mass assignment
    protected $fillable = [
        'name',
        'email',
        'password',
        // 'agreement',
    ];

    // Optionally, you can hide sensitive fields like password
    protected $hidden = [
        'password',
    ];
}
