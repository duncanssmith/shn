@extends('layout.master')

@section('content')

<div class="starter-content">

<h1>
    {{ Auth::check() ?  "Logged in ". Auth::user()->username : "You are not logged in." }}
</h1>

<p class="lead"></p>
</div>

@stop
