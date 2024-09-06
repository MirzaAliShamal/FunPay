<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\OfferCategory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\OfferCategory>
 */
class OfferCategoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = OfferCategory::class;

    public function definition()
    {
        return [
            'name' => $this->faker->word(),
            'status' => 1,
        ];
    }
}
