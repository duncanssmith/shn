<!-- app/views/users/edit.blade.php -->

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

<h1>Edit {{ $user->name }}</h1>

<!-- if there are creation errors, they will show here -->
{{ HTML::ul($errors->all()) }}

{{ Form::model($user, array('route' => array('users.update', $user->id), 'method' => 'PUT')) }}

	<div class="form-user">
		{{ Form::label('username', 'Username') }}
		{{ Form::text('username', null, array('class' => 'form-control')) }}
	</div>

	<div class="form-user">
		{{ Form::label('email', 'Email') }}
		{{ Form::email('email', null, array('class' => 'form-control')) }}
	</div>

	<div class="form-user">
		{{ Form::label('password', 'Password') }}
		{{ Form::password('password', null, array('class' => 'form-control')) }}
	</div>

	<div class="form-user">
		{{ Form::label('confirmation_code', 'Confirmation code') }}
		{{ Form::text('confirmation_code', null, array('class' => 'form-control')) }}
	</div>

	<div class="form-user">
		{{ Form::label('remember_token', 'Remember token') }}
		{{ Form::text('remember_token', null, array('class' => 'form-control')) }}
	</div>

	<div class="form-user">
		{{ Form::label('confirmed', 'Confirmed') }}
		{{ Form::text('confirmed', null, array('class' => 'form-control')) }}
	</div>

	{{ Form::submit('Save', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

</div>

@stop
