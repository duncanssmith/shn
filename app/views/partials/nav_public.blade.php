    <nav class="navbar navbar-fixed-top">
        <div class="navbar-header">

        <div class="navbar-collapse collapse" role="navigation">

            <ul class="nav navbar-nav" role="menu" aria-labelledby="dLabel">
                <li class="dropdown" role="presentation"><a href="/secure"><i class="fa fa-gear"></i></a></li>
                <li class="dropdown" role="presentation"><a href="/"><i class="fa fa-home"></i></a></li> 

                <li class="dropdown" role="presentation">
                    <a href="#" data-toggle="dropdown"><span class="fa fa-bars"></span></a>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                        @foreach($group_list as $item)
                            <li><a href="/publicgroup/{{$item->id}}">{{ $item->name }}</a></li>
                        @endforeach
                    </ul>
                </li>
            </ul>
        </div>
    </nav>