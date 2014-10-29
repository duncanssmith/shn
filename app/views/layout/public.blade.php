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

            <nav class="navbar navbar-fixed-top">
<!--                 <div class="navbar-header">
                    <ul class="nav navbar-nav" role="menu" aria-labelledby="dLabel">
                        <li><a href="/">...</a></li>
                        <li><a href="/publicgroups">Groups</a></li>
                        <li><a href="/publictexts">Texts</a></li>
                        <li><a href="/publicgroups" data-toggle="dropdown">Groups</a> </li>
                        <li><a href="/publictexts" data-toggle="dropdown">Texts</a></li>
                    </ul>
                </div> -->
                <div class="navbar-header dropdown">
                    <a data-toggle="dropdown" href="/publicgroups">Groups</a>
                    <ul class="nav navbar-nav dropdown-menu" role="menu" aria-labelledby="dLabel">
                        @foreach($groups as $group)
                            <li><a href="/publicgroup/{{$group->id}}">{{ $group->name }}</a></li>
                        @endforeach
                    </ul>
                </div>
                |
                <div class="navbar-header dropdown">
                    <a data-toggle="dropdown" href="/publictexts">Texts</a>
                    <ul class="nav navbar-nav dropdown-menu" role="menu" aria-labelledby="dLabel">
                    @foreach($groups as $group)
                        <li><a href="/publicgroup/{{$group->id}}">{{ $group->name }}</a></li>
                    @endforeach

                    </ul>
                </div>
            </nav>

            @section('nav')

            Hello World this is the layout.master.blade.php nav section

            @show

<div class="dropdown">
  <a data-toggle="dropdown" href="#">Groups</a>
  <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
        @foreach($groups as $group)
            <li><a href="/publicgroup/{{$group->id}}">{{ $group->name }}</a></li>
        @endforeach
  </ul>
</div>



            @yield('content')

        </div>

    </body>

</html>
