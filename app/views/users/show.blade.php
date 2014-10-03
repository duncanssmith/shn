<!-- app/views/users/show.blade.php -->

@extends('layout')

@section('nav')

@include('users.nav')

@stop

@section('content')

<h1>Showing {{ $user->name }}</h1>

	<div class="jumbotron text-center">
		<h2>{{ $user->username }}</h2>
		<p>
			<strong>Id:</strong> {{ $user->id }}
		</p>



		<p>
        	<strong>Email:</strong> {{ $user->email }}
        </p>



		<p>
        	<strong>Password:</strong> {{ $user->password }}
        </p>



		<p>
        	<strong>Confirmation code:</strong> {{ $user->confirmation_code }}
        </p>



		<p>
        	<strong>Remember token:</strong> {{ $user->remember_token }}
        </p>



		<p>
        	<strong>Confirmed:</strong> {{ $user->confirmed }}
        </p>

	</div>

</div>

@stop