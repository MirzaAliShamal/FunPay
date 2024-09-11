<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OfferType extends Model
{
    use HasFactory;
    protected $fillable = ['offer_category_id','name','status'];

    public function offercategory()
    {
        return $this->belongsTo(OfferCategory::class,'offer_category_id','id');
    }

}
