$(document).ready(function () {
    $("li").hide();
    $(":button").mouseenter(function () {
        $("li").slideToggle(1000);
    });
    $(":button").mouseleave(function () {
        $("li").slideToggle(1000);
    });
});