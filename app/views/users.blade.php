@extends('layout')

@section('content')

Users:
    @foreach($users as $user)
        <p>{{ $user->name }} {{ $user->email }}</p>
            @endforeach
@stop
