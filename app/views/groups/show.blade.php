<!-- app/views/groups/show.blade.php -->

<!DOCTYPE html>
<html>
<head>
	<title>Look! I'm CRUDding</title>
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">

<nav class="navbar navbar-inverse">
	<div class="navbar-header">
		<a class="navbar-brand" href="{{ URL::to('groups') }}">Work Alert</a>
	</div>
	<ul class="nav navbar-nav">
		<li><a href="{{ URL::to('groups') }}">View All groups</a></li>
		<li><a href="{{ URL::to('groups/create') }}">Create a group</a>
	</ul>
</nav>

<h1>Showing {{ $group->name }}</h1>

	<div class="jumbotron text-center">
		<h2>{{ $group->name }}</h2>
		<p>
			<strong>Id:</strong> {{ $group->id }}
		</p>
	</div>

</div>
</body>
</html>
