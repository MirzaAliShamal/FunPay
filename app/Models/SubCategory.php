<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Sluggable\HasSlug;
use Spatie\Sluggable\SlugOptions;

class SubCategory extends Model
{
    use HasFactory, HasSlug;
    protected $fillable = ['category_id','name', 'permalink','status'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function games()
    {
        return $this->hasMany(Game::class);
    }

    public function getSlugOptions() : SlugOptions
    {
        return SlugOptions::create()
            ->generateSlugsFrom('name')
            ->saveSlugsTo('slug');
    }

    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($subCategory) {
            $subCategory->games()->delete();
        });
    }
}
