<!-- app/views/pages/texts.blade.php -->

@extends('...layout.public')

@section('nav')

@stop

@section('content')

	<div>
	    @foreach($texts as $text)
           <p><a href="/publictext/{{$text->id}}">{{ $text->title }}</a></p>
        @endforeach
	</div>

@stop