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

            <nav class="navbar navbar navbar-fixed-top">
                <div class="navbar-header">
                    <ul class="nav navbar-nav">

                        <li><a href="/">...</a></li>
                        <li><a href="/publicgroups">Sharon Hall</a></li>

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
