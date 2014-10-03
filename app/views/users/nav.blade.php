<!-- app/views/works/nav.blade.php -->

<nav class="navbar navbar-inverse">
	<ul class="nav navbar-nav">
		<li><a href="{{ URL::to('users') }}">List users</a></li>
		<li><a href="{{ URL::to('users/create') }}">Add user</a>
	</ul>
</nav>
