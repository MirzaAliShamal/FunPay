<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\SubCategory;
use App\Models\Category;
use App\Models\OfferCategory;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\SubCategory>
 */
class SubCategoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = SubCategory::class;

    public function definition()
    {
        return [
            'category_id' => Category::factory(), // Creates a new category if one does not exist
            'offer_category_id' => OfferCategory::factory(),
            'name' => $this->faker->word(),
            'slug' => $this->faker->slug(),
            'status' => 1,
        ];
    }
}
