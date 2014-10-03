<!-- app/views/groups/show.blade.php -->


@extends('layout')

@section('nav')

@include('nav')

@stop

@section('content')

<h1>Showing {{ $group->name }}</h1>

	<div class="jumbotron text-center">
		<h2>{{ $group->name }}</h2>
		<p>
			<strong>Id:</strong> {{ $group->id }}
		</p>
	</div>

</div>



@stop