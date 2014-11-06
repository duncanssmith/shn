<?php

View::composer(array('layout.public', 'layout.master', 'works.index', 'groups.index', 'texts.index', 'pages.group', 'pages.home'), function($view)
{
    $view->with('groups', Group::all())->with( 'total_groups', Group::count())->with('total_works', Work::count())->with('total_texts', Text::count());
});