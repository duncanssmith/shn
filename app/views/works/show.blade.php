<!-- app/views/works/show.blade.php -->

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
		<a class="navbar-brand" href="{{ URL::to('works') }}">Work Alert</a>
	</div>
	<ul class="nav navbar-nav">
		<li><a href="{{ URL::to('works') }}">View All works</a></li>
		<li><a href="{{ URL::to('works/create') }}">Create a work</a>
	</ul>
</nav>

<h1>Showing {{ $work->name }}</h1>

	<div class="jumbotron text-center">
		<h2>{{ $work->title }}</h2>
		<img src="/media/images/64/sh_{{$work->reference}}.jpg">
		<p>
			<strong>Reference:</strong> {{ $work->reference }}<br>
			<strong>Media:</strong> {{ $work->media }}<br>
			<strong>Dimensions:</strong> {{ $work->dimensions }}<br>
			<strong>Work date:</strong> {{ $work->work_date }}
		</p>
	</div>

</div>
</body>
</html>