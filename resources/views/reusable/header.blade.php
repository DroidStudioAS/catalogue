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
<script>
    let isExpanded = false;
    function toggleMenu(){
        let right = "0px";
        if (isExpanded){
            right="-300px";
        }
        $(".navigation").animate({
            right:right
        },500)
        isExpanded=!isExpanded;
    }
</script>
