<header class="header">
    <h1 class="app_title">SladIT Car Saloon</h1>
    <img onclick="toggleMenu()" class="menu_button" src="/res/icon_nav.png">
    <nav class="navigation">
        <div class="nav_item">
            <a href="{{route("home")}}">Home</a>
        </div>
        <div class="nav_item">
            <a>Shop Page</a>
        </div>
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
