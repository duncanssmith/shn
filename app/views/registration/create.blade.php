@extends('layout')

@section('content')

<div class="starter-content">

<h1>Register</h1>

{{ Form::open(['route' => 'registration.store']) }}

	<div class="form-group">
		{{ Form::label('username', 'Username:') }}
		{{ Form::text('username', null, ['class' => 'form-control', 'placeholder' => 'Username', 'required' => 'required']) }}
		{{ $errors->first('username', '<span class="error">:message</span>') }}
	</div>

	<div class="form-group">
		{{ Form::label('email', 'Email:') }}
		{{ Form::text('email', null, ['class' => 'form-control', 'placeholder' => 'Email', 'required' => 'required']) }}
		{{ $errors->first('email', '<span class="error">:message</span>') }}
	</div>

	<div class="form-group">
    	{{ Form::label('password', 'Password:') }}
    	{{ Form::password('password',  ['class' => 'form-control', 'placeholder' => 'Password', 'required' => 'required']) }}
    	{{ $errors->first('password', '<span class="error">:message</span>') }}
    </div>

  	<div class="form-group">
        {{ Form::label('password_confirmation', 'Password:') }}
        {{ Form::password('password_confirmation',  ['class' => 'form-control', 'placeholder' => 'Password confirmation']) }}
        {{ $errors->first('password_confirmation', '<span class="error">:message</span>') }}
    </div>

    {{ Form::submit('Create account', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

</div>

@stop
