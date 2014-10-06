<!-- app/views/users/show.blade.php -->

@extends('...layout.master')

@section('nav')

    <nav class="navbar navbar-inverse">
        <ul class="nav navbar-nav">
            <li><a href="{{ URL::to('users') }}">List users</a></li>
            <li><a href="{{ URL::to('users/create') }}">Add user</a>
        </ul>
    </nav>

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