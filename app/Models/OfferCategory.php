<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OfferCategory extends Model
{
    use HasFactory;
    protected $fillable = ['name','status'];

    public function offerFields()
    {
        return $this->hasMany(OfferField::class);
    }
}
