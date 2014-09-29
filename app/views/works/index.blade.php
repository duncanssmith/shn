<!-- app/views/works/index.blade.php -->

@extends('layout')

@section('content')

<!DOCTYPE html>
<html>
<head>
	<title>Works</title>
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">

<nav class="navbar navbar-inverse">
	<div class="navbar-header">
		<a class="navbar-brand" href="{{ URL::to('works') }}">work Alert</a>
	</div>
	<ul class="nav navbar-nav">
		<li><a href="{{ URL::to('works') }}">View All works</a></li>
		<li><a href="{{ URL::to('works/create') }}">Create a work</a>
	</ul>
</nav>

<h1>All the works</h1>

<!-- will be used to show any messages -->
@if (Session::has('message'))
	<div class="alert alert-info">{{ Session::get('message') }}</div>
@endif

<table class="table table-striped table-bordered">
	<thead>
		<tr>
			<td>ID</td>
			<td>Image</td>
			<td>Title</td>
			<td>Reference</td>
			<td>Media</td>
			<td>Dimensions</td>
			<td>Date</td>
			<td>Actions</td>
		</tr>
	</thead>
	<tbody>
	@foreach($works as $key => $work)
		<tr>

        <td>{{ $work->id }}</td>
        <td><img src="/media/images/64/sh_{{ $work->reference }}.jpg"></td>
        <td>{{ $work->title }}</td>
        <td>{{ $work->reference }}</td>
        <td>{{ $work->media }}</td>
        <td>{{ $work->dimensions }}</td>
        <td>{{ $work->work_date }}</td>

			<!-- we will also add show, edit, and delete buttons -->
			<td>

				<!-- delete the work (uses the destroy method DESTROY /works/{id} -->
				<!-- we will add this later since its a little more complicated than the other two buttons -->
				{{ Form::open(array('url' => 'works/' . $work->id, 'class' => 'pull-right')) }}
                    {{ Form::hidden('_method', 'DELETE') }}
                    {{ Form::submit('Delete', array('class' => 'btn btn-danger')) }}
                {{ Form::close() }}
                {{ Form::close() }}
				<!-- show the work (uses the show method found at GET /works/{id} -->
				<a class="btn btn-small btn-success" href="{{ URL::to('works/' . $work->id) }}">Show</a>

				<!-- edit this work (uses the edit method found at GET /works/{id}/edit -->
				<a class="btn btn-small btn-info" href="{{ URL::to('works/' . $work->id . '/edit') }}">Edit</a>

			</td>
		</tr>
	@endforeach
	</tbody>
</table>

</div>
</body>
</html>
