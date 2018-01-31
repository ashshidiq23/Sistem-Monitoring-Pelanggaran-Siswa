<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Request;

class LaravelAppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        $halaman = '';
        if (Request::segment(1)=='siswa')
        {
            $halaman='siswa';
        }
        if (Request::segment(1)=='')
        {
            $halaman='dashboard';
        }
        if (Request::segment(1)=='pelanggaran')
        {
            $halaman='pelanggaran';
        }
        if (Request::segment(1)=='penghargaan')
        {
            $halaman='penghargaan';
        }
        view()->share('halaman', $halaman);
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
