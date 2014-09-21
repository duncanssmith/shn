@extends('layout')

@section('content')

Hello

Users: here
    @foreach($users as $user)
        <p>{{ $user->name }}</p>
            @endforeach

@stop
