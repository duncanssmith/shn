    <nav class="navbar navbar-fixed-top">

        <div class="navbar-header">

            <div class="navbar-collapse collapse" role="navigation">

                <ul class="nav navbar-nav">

                    <li class="dropdown" role="presentation"><a href="/" title="home"><i class="fa fa-home"></i></a></li> 
                    <li class="dropdown" role="presentation"><a href="/page/17" title="current work"><i class="fa fa-clock-o"></i></a></li> 

                    <li class="dropdown" role="presentation">
                        <a href="#" data-toggle="dropdown" title="explore"><span class="fa fa-bars"></span></a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                            @foreach($group_list as $item)
                                <li><a href="/page/{{$item->id}}">{{ $item->name }}</a></li>
                            @endforeach
                        </ul>
                    </li>

                    @if (Auth::guest())

                    @else
                    
                        <li><a href="/groups" title="groups"><i class="fa fa-folder xicon-white"></i> </a></li>
                        <li><a href="/works" title="works"><i class="fa fa-paint-brush xicon-white"></i> </a></li>
                        <li><a href="/texts" title="texts"><i class="fa fa-file-text xicon-white"></i> </a></li>
                        <li><a href="/users" title="users"><i class="fa fa-group xicon-white"></i></a></li>

                    @endif

                </ul>
            </div>
        </div>
        <div class="navbar-header pull-right">
            <ul class="nav navbar-nav">

                @if (Auth::guest())

                    <li><a href="/login" title="log in"><i class="fa fa-key icon-white"></i> </a></li>
                @else
                    <li class="dropdown" role="presentation" ><a href="#" title="logged in as"><i class="fa fa-user icon-white"></i></a> {{ Auth::check() ?  Auth::user()->username : "" }}</li>
                    <li><a href="/logout" title="log out"><i class="fa fa-key icon-white"></i> </a></li>
                @endif  
            </ul>
        </div>
    </nav>
