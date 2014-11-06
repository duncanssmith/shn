<!-- app/views/pages/home.blade.php -->

@extends('...layout.public')

@section('nav')

    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span><i class="fa fa-bars"></i></span>
    </a>
	<div class="nav-collapse collapse">
	    <ul class="nav">
	    @foreach($groups as $group)
	        <li><a href="/publicgroup/{{$group->id}}" >{{ $group->name }}</a></li>
        @endforeach
        </ul>
	</div>

    <div class="dropdown">
        <a data-toggle="dropdown" href="#">Groups</a>
        <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            @foreach($groups as $group)
                <li><a href="/publicgroup/{{$group->id}}">{{ $group->name }}</a></li>
            @endforeach
        </ul>
    </div>  

@stop

@section('content')




@stop