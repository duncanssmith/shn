@extends('layout')

@section('content')

Works:
    @foreach($works as $work)
        <p>{{ $work->title }} {{ $work->media }}</p>
    @endforeach
@stop
