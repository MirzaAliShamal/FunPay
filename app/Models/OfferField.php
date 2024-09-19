<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OfferField extends Model
{
    use HasFactory;

    protected $fillable = ['offer_category_id','label','values','type', 'status'];

    public function offercategory()
    {
        return $this->belongsTo(OfferCategory::class,'offer_category_id','id');
    }
}
