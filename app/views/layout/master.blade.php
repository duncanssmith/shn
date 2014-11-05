<!DOCTYPE html>
<html>
    <head>
    	<meta charset="UTF-8">
        <title>{{$title}}</title>
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <link rel="stylesheet" href="/media/css/font-awesome.css">
        <link rel="stylesheet" href="/media/css/main.css">
        <script src="{{ asset('/media/js/vendor/jquery/jquery-2.1.1.min.js') }}"></script>
        <script src="{{ asset('/media/js/vendor/twitter/bootstrap/js/bootstrap.min.js') }}"></script>
    </head>

    <body>

        <div class="container">

            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="navbar-header">
                    <ul class="nav navbar-nav">

                    <li><a href="/">Sharon Hall</a></li>

                        @if (Auth::guest())

                            <li><a href="/login">Login</a></li>

                        @else

                            <li><a href="/groups">Groups</a></li>
                            <li><a href="/works">Works</a></li>
                            <li><a href="/texts">Texts</a></li>
                            <li><a href="/users">Users</a></li>
                            <li><a href="/logout">Logout</a></li>

                        @endif

                    </ul>
                </div>
            </nav>

            @section('nav')

            @show

            @yield('content')

        </div>

    </body>

</html>