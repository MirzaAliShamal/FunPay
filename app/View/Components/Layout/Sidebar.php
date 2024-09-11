<?php

namespace App\View\Components\Layout;

use Illuminate\View\Component;
use App\Models\User;
use App\Models\Module;
use App\Models\Category;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class Sidebar extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        
        
        return view('components.layout.sidebar');
        // return view('components.layout.sidebar');
    }
}
