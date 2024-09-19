<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Option;
use App\Models\Filter;

class OptionsTableSeeder extends Seeder
{
    public function run()
    {
        // Example: Create options for a filter
        $filter = Filter::create(['name' => 'Platform', 'type' => 'select']);
        Option::create(['name' => 'iOS', 'filter_id' => $filter->id]);
        Option::create(['name' => 'Android', 'filter_id' => $filter->id]);

        $filter2 = Filter::create(['name' => 'Level', 'type' => 'range']);
        // No options needed for range
    }
}
