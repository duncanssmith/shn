<!-- app/views/groups/show.blade.php -->

@extends('...layout.main')

@section('nav')

    @include('partials.nav')

    @include('partials.subnav')

@stop

@section('content')

<h1>{{ $group->name }}</h1>

	<div class="text-left">
		<h2>{{ $group->name }}</h2>
		<p>
			<strong>Id:</strong> {{ $group->id }}
		</p>
		<h2>{{ $group->order }}</h2>
		<p>
			<strong>Order:</strong> {{ $group->order }}
		</p>
	</div>

</div>



@stop
