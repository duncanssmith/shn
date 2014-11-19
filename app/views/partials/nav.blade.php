    <nav class="navbar navbar-inverse navbar-fixed-top">

        <div class="navbar-header">

            <div class="navbar-collapse collapse " role="navigation">

                <ul class="nav navbar-nav">

                    <li class="dropdown" role="presentation">
                        <a href="/" title="Home">
                            <!--<i class="fa fa-home"></i> -->
                            <strong>Sharon Hall</strong>
                        </a>
                    </li> 

                    <li class="dropdown" role="presentation">
                        <a href="/page/17" title="Current work">
                            <i class="fa fa-circle"></i>
                            Current work
                        </a>
                    </li> 

                    <li class="dropdown" role="presentation">
                        <a href="#" data-toggle="dropdown" title="All work">
                            <i class="fa fa-th-large"></i> All work
                        </a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                            @foreach($group_list as $item)
                                <li><a href="/page/{{$item->id}}">{{ $item->name }}</a></li>
                            @endforeach
                        </ul>
                    </li>

                    @if (Auth::guest())

                    @else
                    
                        <li><a href="/pages" title="Pages"><i class="fa fa-folder-open xicon-white"></i> Pages</a></li>
                        <li><a href="/works" title="Works"><i class="fa fa-paint-brush xicon-white"></i> Works</a></li>
                        <li><a href="/texts" title="Texts"><i class="fa fa-file-text xicon-white"></i> Texts</a></li>
                        <li><a href="/users" title="Users"><i class="fa fa-user xicon-white"></i> Users</a></li>

                    @endif

                </ul>
            </div>
        </div>
        <div class="navbar-header pull-right">
            <ul class="nav navbar-nav">

                @if (Auth::guest())

                    <li><a href="/login" title="Log in"><i class="fa fa-key icon-white"></i> </a></li>

                @else

                    <li class="dropdown" role="presentation">
                        <a href="#" data-toggle="dropdown" title="Logged in as"><i class="fa fa-user xicon-white"></i> {{ Auth::check() ?  Auth::user()->username : "" }}</a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dlabel">
                            <li class="dropdown" role="presentation"><a href="/logout" title="Log out"><i class="fa fa-key icon-white"></i> Log out</a></li>
                        </ul>
                @endif  
            </ul>
        </div>
    </nav>
