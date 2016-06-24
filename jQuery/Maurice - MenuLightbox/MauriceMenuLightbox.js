$(document).ready(function () {

    $("li").hide();
    $(":button").mouseenter(function () {
        $("li").slideToggle(1000);
    });
    $(":button").mouseclick(function () {
        $("li").slideToggle(1000);
    });

});