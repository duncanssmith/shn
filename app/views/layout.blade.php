<!DOCTYPE html>
<html>
<head>
	<title>{{$title}}</title>
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
    <body>
        <h1>shn</h1>
        <h2>{{$title}}</h2>

<div class="container">

    <nav class="navbar navbar-inverse">
        <div class="navbar-header">
            <ul class="nav navbar-nav">
                <li><a href="/">Home</a></li>
                <li><a href="/users">Users</a></li>
                <li><a href="/works">Works</a></li>
                <li><a href="/groups">Groups</a></li>
                <li><a href="/login">Login</a></li>
            </ul>
        </div>
    </nav>

    @yield('content')

</container>
    </body>

</html>
