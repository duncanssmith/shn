<!DOCTYPE html>
<html>
    <head>
    	<meta charset="UTF-8">
        <title>{{$title}}</title>
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="/media/css/font-awesome.css">
        <link rel="stylesheet" href="/media/css/main.css">
        <script src="{{ asset('/media/js/vendor/jquery/jquery-2.1.1.min.js') }}"></script>
        <script src="{{ asset('/media/js/vendor/twitter/bootstrap/js/bootstrap.min.js') }}"></script>
    </head>
    
    <body>

        <div class="container">

            <nav class="navbar navbar navbar-fixed-top">
                <div class="navbar-header">
                    <ul class="nav navbar-nav dropdown">
                        <li><a href="/">...</a></li>
                        <li><a href="/publicgroups" data-toggle="dropdown">Groups</a></li>
                        <li><a href="/publictexts" data-toggle="dropdown">Texts</a></li>
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
