<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Game>
 */
class GameFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = \App\Models\Game::class;

    public function definition()
    {
        return [
            'category_id' => \App\Models\Category::factory(),
            'sub_category_id' => \App\Models\SubCategory::factory(),
            'name' => $this->faker->word,
            'slug' => $this->faker->slug,
            'description' => $this->faker->paragraph,
            'image' => $this->faker->imageUrl,
            'status' => $this->faker->boolean,
        ];
    }
}
