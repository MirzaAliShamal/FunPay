<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Sluggable\HasSlug;
use Spatie\Sluggable\SlugOptions;

class Category extends Model
{
    use HasFactory, HasSlug;
    protected $fillable = ['name', 'slug','status'];

    public function subCategories()
    {
        return $this->hasMany(SubCategory::class);
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

        static::deleting(function ($category) {
            $category->subCategories()->delete();
        });
    }
}
