<!-- app/views/texts/show.blade.php -->


@extends('...layout.main')

@section('nav')

    @include('partials.nav_secure')

    @include('partials.subnav_secure')

@stop

@section('content')

<h1>{{ $text->name }}</h1>

	<div class="text-left">
		<h2>{{ $text->title }}</h2>
		<p>
			<strong>Id:</strong> {{ $text->id }}
		</p>
		<p>{{ $text->author }}</p>
		<p>{{ $text->description }}</p>
		<p>{{ $text->year }}</p>
		<p>{{ $text->publication }}</p>
		<p>{{ $text->publication_date }}</p>
		<p>{{ $text->content }}</p>
		<p><b>Order:</b> {{ $text->order }}</p>

	</div>

</div>



@stop
