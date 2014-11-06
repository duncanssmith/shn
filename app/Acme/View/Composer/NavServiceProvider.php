<?php namespace Acme\View\Composer;

use Illuminate\Support\ServiceProvider;

class NavServiceProvider extends ServiceProvider
{

	public function register()
	{
        //$nav_data = \Group::all();

//        var_dump($nav_data); die();

		\View::composer('layout.public', 'Acme\View\Composer\NavigationComposer');
	}
}

