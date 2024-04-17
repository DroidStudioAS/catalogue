let filtersExpanded = false;
let menuExpanded = false;

function toggleFilters(){
    let right = "0px";
    if(filtersExpanded){
        right = "-300px";
    }
    $(".filters").animate({
        right:right
    },500)

    filtersExpanded=!filtersExpanded;
}
function toggleMenu(){
    let right = "0px";
    if (menuExpanded){
        right="-300px";
    }
    $(".navigation").animate({
        right:right
    },500)
    menuExpanded=!menuExpanded;
}

function displayComments(id){
    if($("#"+id+"commentContainer").css("display")==="flex"){
        $("#"+id+"commentContainer").css("display","none");
        $("#"+id+"ActionButtons").removeClass("expanded");
        $("#displayComments"+id).text("Show Comments")
        return;
    }
    $("#"+id+"commentContainer").css("display","flex");
    $("#"+id+"ActionButtons").addClass("expanded");
    $("#displayComments"+id).text("Hide Comments")

}
