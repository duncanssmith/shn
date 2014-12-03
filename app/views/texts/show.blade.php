<!-- app/views/texts/show.blade.php -->

@extends('...layout.main')

@section('nav')

    @include('partials.nav')

    @include('partials.subnav')

@stop

@section('content')

	<div class="text-left">
		<h2><strong>Title: </strong> {{ $text->title }}</h2>
		<p>
		<strong>Author:</strong> {{ $text->author }}<br>
		<strong>Description:</strong> {{ $text->description }}<br>
		<strong>Year:</strong> {{ $text->year }}<br>
		<strong>Publication:</strong> {{ $text->publication }}<br>
		<strong>Publication date:</strong> {{ $text->publication_date }}<br>
		<strong>Content:</strong> <blockquote>{{ $text->content }}</blockquote></p>
	</div>

</div>

@stop
