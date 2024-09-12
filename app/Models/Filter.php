<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Filter extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'type'];

    public function subcategories()
    {
        return $this->belongsToMany(Subcategory::class, 'filter_subcategory');
    }
}
