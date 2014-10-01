<!-- app/views/users/show.blade.php -->


@extends('layout')

@section('content')

<nav class="navbar navbar-inverse">
	<div class="navbar-header">
		<a class="navbar-brand" href="{{ URL::to('users') }}">User Alert</a>
	</div>
	<ul class="nav navbar-nav">
		<li><a href="{{ URL::to('users') }}">View All users</a></li>
		<li><a href="{{ URL::to('users/create') }}">Create a user</a>
	</ul>
</nav>

<h1>Showing {{ $user->name }}</h1>

	<div class="jumbotron text-center">
		<h2>{{ $user->username }}</h2>

		<p>
        	<strong>Email:</strong> {{ $user->email }}
        </p>

		<p>
			<strong>Id:</strong> {{ $user->id }}
		</p>
	</div>

</div>

@stop