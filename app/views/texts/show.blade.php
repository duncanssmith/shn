<!-- app/views/texts/show.blade.php -->


@extends('...layout.main')

@section('nav')

    @include('partials.nav')

    @include('partials.subnav')

@stop

@section('content')

<h1>{{ $text->name }}</h1>

	<div class="text-left">
		<h2>{{ $text->title }}</h2>
		<p>{{ $text->author }}</p>
		<p>{{ $text->description }}</p>
		<p>{{ $text->year }}</p>
		<p>{{ $text->publication }}</p>
		<p>{{ $text->publication_date }}</p>
		<p><blockquote>{{ $text->content }}</blockquote></p>
	</div>

</div>



@stop
