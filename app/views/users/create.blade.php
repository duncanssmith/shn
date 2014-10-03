<!-- app/views/users/create.blade.php -->

@extends('layout')

@section('content')

<nav class="navbar navbar-inverse">
	<ul class="nav navbar-nav">
		<li><a href="{{ URL::to('users') }}">View All users</a></li>
		<li><a href="{{ URL::to('users/create') }}">Create a user</a>
	</ul>
</nav>

<h1>Create a user</h1>

<!-- if there are creation errors, they will show here -->
{{ HTML::ul($errors->all()) }}

{{ Form::open(array('url' => 'users')) }}

	<div class="form-user">
		{{ Form::label('username', 'Username') }}
		{{ Form::text('username', Input::old('username'), array('class' => 'form-control')) }}
	</div>

	<div class="form-user">
		{{ Form::label('email', 'Email') }}
		{{ Form::email('email', Input::old('email'), array('class' => 'form-control')) }}
	</div>

	<div class="form-user">
		{{ Form::label('password', 'Password') }}
		{{ Form::password('password', Input::old('password'), array('class' => 'form-control')) }}
	</div>

	<div class="form-user">
		{{ Form::label('confirmation_code', 'Confirmation code') }}
		{{ Form::text('confirmation_code', Input::old('confirmation_code'), array('class' => 'form-control')) }}
	</div>

	<div class="form-user">
		{{ Form::label('remember_token', 'Remember token') }}
		{{ Form::text('remember_token', Input::old('remember_token'), array('class' => 'form-control')) }}
	</div>

	<div class="form-user">
		{{ Form::label('confirmed', 'Confirmed') }}
		{{ Form::text('confirmed', Input::old('confirmed'), array('class' => 'form-control')) }}
	</div>

	{{ Form::submit('Save', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

</div>

@stop
