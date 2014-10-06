<!-- app/views/groups/show.blade.php -->


@extends('...layout.master')

@section('nav')

    <nav class="navbar navbar-inverse">
        <ul class="nav navbar-nav">
            <li><a href="{{ URL::to('groups') }}">List groups</a></li>
            <li><a href="{{ URL::to('groups/create') }}">Add group</a>
        </ul>
    </nav>

@stop

@section('content')

<h1>Showing {{ $group->name }}</h1>

	<div class="jumbotron text-center">
		<h2>{{ $group->name }}</h2>
		<p>
			<strong>Id:</strong> {{ $group->id }}
		</p>
	</div>

</div>



@stop