<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Buyer;
use App\Models\Seller;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class DashboardController extends Controller
{
    public function home(Request $request)
    {
        $sellersCount = Seller::count();
        $buyersCount = Buyer::count();

        return view('dashboard.dashboard', compact('sellersCount', 'buyersCount'));
    }

    public function getMonthlyData(Request $request)
    {
        $month = $request->input('month');
        $year = $request->input('year');
        $category = $request->input('category');

        // Initialize arrays for labels and data
        $months = [];
        $sellersData = [];
        $buyersData = [];

        // If month and year are not provided, default to the last 12 months
        if (!$month || !$year) {
            for ($i = 11; $i >= 0; $i--) {
                $date = Carbon::now()->subMonths($i);
                $months[] = $date->format('F Y');

                $sellersData[] = Seller::whereYear('created_at', $date->year)
                                        ->whereMonth('created_at', $date->month)
                                        ->when($category, function ($query) use ($category) {
                                            return $query->where('category', $category);
                                        })
                                        ->count();

                $buyersData[] = Buyer::whereYear('created_at', $date->year)
                                      ->whereMonth('created_at', $date->month)
                                      ->when($category, function ($query) use ($category) {
                                          return $query->where('category', $category);
                                      })
                                      ->count();
            }
        } else {
            // For the selected month and year, get the data for that month
            $date = Carbon::createFromDate($year, $month, 1);
            $months[] = $date->format('F Y');

            $sellersData[] = Seller::whereYear('created_at', $year)
                                    ->whereMonth('created_at', $month)
                                    ->when($category, function ($query) use ($category) {
                                        return $query->where('category', $category);
                                    })
                                    ->count();

            $buyersData[] = Buyer::whereYear('created_at', $year)
                                  ->whereMonth('created_at', $month)
                                  ->when($category, function ($query) use ($category) {
                                      return $query->where('category', $category);
                                  })
                                  ->count();
        }

        return response()->json([
            'months' => $months,
            'sellers' => $sellersData,
            'buyers' => $buyersData,
        ]);
    }
}
