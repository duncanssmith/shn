<!-- app/views/pages/texts.blade.php -->

@extends('...layout.public')

@section('nav')

@stop

@section('content')

	<div class="nav-collapse collapse">
	    <ul class="nav">
	    @foreach($texts as $text)
           <li><a href="/publictext/{{$text->id}}">{{ $text->title }}</a></li>
        @endforeach
        </ul>
	</div>

@stop