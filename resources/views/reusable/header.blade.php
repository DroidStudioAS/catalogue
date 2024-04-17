<head>
    <script src="{{asset("/js/main.js")}}"></script>
</head>
<header class="header">
    <h1 class="app_title">SladIT Car Catalogue</h1>
    <img onclick="toggleMenu()" class="menu_button" src="/res/icon_nav.png">
    <nav class="navigation">
        <div class="nav_item">
            <a href="{{route("home")}}">Home</a>
        </div>
        <div class="nav_item">
            <a href="{{route("shop")}}">Shop Page</a>
        </div>
        @if(\Illuminate\Support\Facades\Auth::check())
            <div class="nav_item">
                <a href="{{ route('logout')  }}"
                   onclick="event.preventDefault();
                 document.getElementById('logout-form').submit();">
                    Logout
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                </form>
            </div>
            @if(\Illuminate\Support\Facades\Auth::user()->role==="admin")
                <div class="nav_item">
                    <a href="{{route("admin.shop")}}">Edit Shop</a>
                </div>
                <div class="nav_item">
                    <a href="{{route("admin.comment")}}">Comments</a>
                </div>
            @endif
        @endif
    </nav>
</header>

