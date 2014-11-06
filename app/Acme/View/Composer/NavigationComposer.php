
<?php namespace Acme\View\Composer;

class NavigationComposer {
	
	protected $nav;

	public function __construct()
	{
	    $this->nav = $nav;
	}

	public function compose($view)
	{
        $nav_data = \Group::lists('id', 'name');

        $nav_data = [1 => 'one', 2 => 'two'];

        $view->with('nav', $nav_data);

	}
}