<!DOCTYPE html>
<html>
    <head>
    	<meta charset="UTF-8">
        <title>{{$title}}</title>
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="/media/css/main.css">
    </head>
    <body>

        <div class="container">

            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="navbar-header">
                    <ul class="nav navbar-nav">

                        <li><a href="/">Home</a></li>
                        <li><a href="/public/1">Public pages</a></li>

                        @if (Auth::guest())

                            <li><a href="/login">Login</a></li>

                        @else

                            <li><a href="/groups">Groups</a></li>
                            <li><a href="/works">Works</a></li>
                            <li><a href="/users">Users</a></li>
                            <li><a href="/logout">Logout</a></li>

                        @endif




                    </ul>
                </div>
            </nav>

            @section('nav')

            Hello World this is the layout.master.blade.php nav section

            @show



            @yield('content')

        </div>

    </body>

</html>