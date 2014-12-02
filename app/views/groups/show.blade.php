<!-- app/views/groups/show.blade.php -->

@extends('...layout.main')

@section('nav')

    @include('partials.nav')

    @include('partials.subnav')

@stop

@section('content')

<h1>Page name: {{ $group->name }}</h1>

	<div class="text-left">
		<p>
			<strong>Order:</strong> {{ $group->order }} of {{ $group->count() }}
		</p>
	</div>

</div>



@stop
