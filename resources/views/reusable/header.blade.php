<header class="header">
    <h1 class="app_title">SladIT Car Saloon</h1>
    <img onclick="toggleMenu()" class="menu_button" src="/res/icon_nav.png">
    <nav class="navigation">

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
