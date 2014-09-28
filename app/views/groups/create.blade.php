<!-- app/views/groups/create.blade.php -->

@extends('layout')

@section('content')

<!DOCTYPE html>
<html>
<head>
	<title>Look! I'm CRUDding</title>
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">

<nav class="navbar navbar-inverse">
	<div class="navbar-header">
		<a class="navbar-brand" href="{{ URL::to('groups') }}">group Alert</a>
	</div>
	<ul class="nav navbar-nav">
		<li><a href="{{ URL::to('groups') }}">View All groups</a></li>
		<li><a href="{{ URL::to('groups/create') }}">Create a group</a>
	</ul>
</nav>

<h1>Create a group</h1>

<!-- if there are creation errors, they will show here -->
{{ HTML::ul($errors->all()) }}

{{ Form::open(array('url' => 'groups')) }}

	<div class="form-group">
		{{ Form::label('name', 'Name') }}
		{{ Form::text('name', Input::old('name'), array('class' => 'form-control')) }}
	</div>

	{{ Form::submit('Create the group!', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

</div>
</body>
</html>
