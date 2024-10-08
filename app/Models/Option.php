<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Option extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function filter()
    {
        return $this->belongsTo(Filter::class, 'filter_id', 'id');
    }
}
