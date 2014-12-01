    <nav class="navbar navbar navbar-fixed-top">

        <div class="navbar-header">

            <div class="navbar-collapse collapse " role="navigation">

                <ul class="nav navbar-nav">

                    <li class="dropdown" role="presentation">
                        <a href="/" title="Home" class="header-link">
                            <strong>Sharon Hall</strong>
                        </a>
                    </li> 

                    <li class="dropdown" role="presentation">
                        <a href="/page/17" title="Current work" class="header-link">
                            Current work
                        </a>
                    </li> 

                    <li class="dropdown" role="presentation">
                        <a href="#" data-toggle="dropdown" title="All work" class="header-link">
                            All work
                        </a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                            @foreach($group_list as $item)
                                <li><a href="/page/{{$item->id}}" class="header-dropdown-link">{{ $item->name }}</a></li>
                            @endforeach
                        </ul>
                    </li>

                    @if (Auth::guest())

                    @else
                    
                        <li><a href="/pages" title="Pages" class="header-link">Pages</a></li>
                        <li><a href="/works" title="Works" class="header-link">Works</a></li>
                        <li><a href="/texts" title="Texts" class="header-link">Texts</a></li>
                        <li><a href="/users" title="Users" class="header-link">Users</a></li>

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
                        <a href="#" data-toggle="dropdown" title="Logged in as" class="header-link"><i class="fa fa-user xicon-white"></i> {{ Auth::check() ?  Auth::user()->username : "" }}</a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dlabel">
                            <li class="dropdown" role="presentation"><a href="/logout" title="Log out" class="header-dropdown-link">Log out</a></li>
                        </ul>
                @endif  
            </ul>
        </div>
    </nav>
