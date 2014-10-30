<!DOCTYPE html>
<html>
    <head>
    	<meta charset="UTF-8">
        <title>{{$title}}</title>
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <link rel="stylesheet" href="/media/css/font-awesome.css">
        <link rel="stylesheet" href="/media/css/main.css">
        <script src="{{ asset('/media/js/vendor/jquery/jquery-2.1.1.min.js') }}"></script>
        <script src="{{ asset('/media/js/vendor/twitter/bootstrap/js/bootstrap.min.js') }}"></script>
    </head>

    <body>

        <div class="container">

            <nav class="navbar navbar-fixed-top">
                <div class="navbar-header">
                    <ul class="nav navbar-nav" role="menu" aria-labelledby="dLabel">
                        <li><a href="/secure">...</a></li>
                        <li><a href="/">Home</a></li>
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
