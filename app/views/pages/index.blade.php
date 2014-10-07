@extends('layout')

@section('content')

<div class="starter-content">

<h1>
    {{ Auth::check() ?  "Welcome to SHN, ". Auth::user()->username : "Why don't you sign up?" }}
</h1>

<p class="lead">Lorem ipsum dolor sit amet, conssectetur...</p>
</div>

@stop
