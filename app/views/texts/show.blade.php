<!-- app/views/texts/show.blade.php -->


@extends('...layout.master')

@section('nav')

    <nav class="navbar navbar-inverse">
        <ul class="nav navbar-nav">
            <li><a href="{{ URL::to('texts') }}">List texts</a></li>
            <li><a href="{{ URL::to('texts/create') }}">Add text</a>
        </ul>
    </nav>

@stop

@section('content')

<h1>{{ $text->name }}</h1>

	<div class="jumbotron text-center">
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

	</div>

</div>



@stop