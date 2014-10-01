<!-- app/views/groups/show.blade.php -->

@extends('layout')

@section('content')

<nav class="navbar navbar-inverse">
	<ul class="nav navbar-nav">
		<li><a href="{{ URL::to('groups') }}">View All groups</a></li>
		<li><a href="{{ URL::to('groups/create') }}">Create a group</a>
	</ul>
</nav>

<h1>Showing {{ $group->name }}</h1>

	<div class="jumbotron text-center">
		<h2>{{ $group->name }}</h2>
		<p>
			<strong>Id:</strong> {{ $group->id }}
		</p>
	</div>

</div>



@stop