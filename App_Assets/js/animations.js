//$("#hide-arrow").on(click, function() {
//    $("#Navigation").addClass("menu-hidden");
//})  

//$("#hide-arrow").click(function() {
//    //$("#Navigation").addClass("menu-hidden");
    
//})

$("#hide-arrow").click(closeMenuHandler);


$("#show-bars").click(openMenuHandler);

$("#loginClose").click(function () {
    $('.login').removeClass('login-open');
    
});


$("#loginOpen").click(function () {
    console.log("clicked")
    $('#login').addClass('login-open');
    closeMenuHandler();
});


function openMenuHandler () {

    $('.nav').addClass('menu-open');
    $("#show-bars").hide();
}

function closeMenuHandler() {
    $('.nav').removeClass('menu-open');
    $("#show-bars").show("slow", function() {});
}