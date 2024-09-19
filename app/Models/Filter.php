<?php

// namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
// use Illuminate\Database\Eloquent\Model;

// class Filter extends Model
// {
//     use HasFactory;

//     protected $fillable = ['name', 'type', 'options'];

//     public function subcategories()
//     {
//         return $this->belongsToMany(Subcategory::class, 'filter_subcategory');
//     }

//     public function options()
//     {
//         return $this->hasMany(Option::class);
//     }

//     public function getOptionsArrayAttribute()
//     {
//         return json_decode($this->options, true);
//     }
// }




namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Filter extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'type'];

    public function subcategories()
    {
        return $this->belongsToMany(SubCategory::class, 'filter_subcategory');
    }

    public function options()
    {
        return $this->hasMany(Option::class, 'filter_id', 'id');
    }


}
