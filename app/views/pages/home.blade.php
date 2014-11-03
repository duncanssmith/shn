<!-- app/views/pages/groups.blade.php -->

@extends('...layout.public')

@section('nav')

<!-- 	<div class="nav-collapse ">
	    <ul class="nav">
	    @foreach($groups as $group)
	        <li><a href="/publicgroup/{{$group->id}}" >{{ $group->name }}</a></li>
        @endforeach
        </ul>
	</div> -->
	
@stop

@section('content')

    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </a>

	<div class="nav-collapse collapse">
	    <ul class="nav">
	    @foreach($groups as $group)
	        <li><a href="/publicgroup/{{$group->id}}">{{ $group->name }}</a></li>
        @endforeach
        </ul>
	</div>


<div class="dropdown">
  <a data-toggle="dropdown" href="#">Groups</a>
  <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
	    @foreach($groups as $group)
	        <li><a href="/publicgroup/{{$group->id}}">{{ $group->name }}</a></li>
        @endforeach
  </ul>
</div>


<div class="dropdown">
    <a data-toggle="dropdown" href="#">Texts</a>
    <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
	      @foreach($texts as $text)
	          <li><a href="/publictext/{{$text->id}}">{{ $text->title }}</a></li>
        @endforeach
    </ul>
</div>

<div>
    <a href="/publiccv">CV</a>
</div>

@stop