<?php

namespace App\Http\ViewComposers;

use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class MainMenuComposer
{
    /**
     * Create a new profile composer.
     *
     * @return void
     */
    public function __construct()
    {
        // Dependencies automatically resolved by service container...
        $this->ds_the_loai = DB::select('SELECT * FROM databookstore.loai');
    }

    /**
     * Bind data to the view.
     *
     * @param  View  $view
     * @return void
     */
    public function compose(View $view)
    {
        $view->with('ds_the_loai', $this->ds_the_loai);
    }
}