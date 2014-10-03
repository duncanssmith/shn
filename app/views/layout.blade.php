<!DOCTYPE html>
<html>
    <head>
    	<meta charset="UTF-8">
        <title>{{$title}}</title>
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="/media/css/main.css">

    </head>
    <body>

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

        </div>

    </body>

</html>