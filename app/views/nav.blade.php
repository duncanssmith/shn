<!-- app/views/works/nav.blade.php -->

<nav class="navbar navbar-inverse">
	<ul class="nav navbar-nav">
		<li><a href="{{ URL::to($controller.'s') }}">List {{$controller}}s</a></li>
		<li><a href="{{ URL::to($controller.'s/create') }}">Add {{$controller}}</a>
	</ul>
</nav>
