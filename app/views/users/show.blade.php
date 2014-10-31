<!-- app/views/users/show.blade.php -->

@extends('...layout.master')

@section('nav')

@include('users.partials.nav')

@stop

@section('content')

<h1>{{ $user->name }}</h1>

	<div class="jumbotron text-center">
		<h2>{{ $user->username }}</h2>
		<p>
			<strong>Id:</strong> {{ $user->id }}
		</p>

		<p>
        	<strong>Email:</strong> {{ $user->email }}
        </p>


	</div>

</div>

@stop