<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\OfferCategory;
use App\Models\OfferType;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\OfferType>
 */
class OfferTypeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = OfferType::class;

    public function definition()
    {
        return [
            'offer_category_id' => OfferCategory::factory(), // Creates a new category if one does not exist
            'name' => $this->faker->word(),
            'status' => 1,
        ];
    }
}
