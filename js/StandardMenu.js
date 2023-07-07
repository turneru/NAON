$(document).ready(function () {

    function HoverOver() {
        $(this).addClass('hover');
    }

    function HoverOut() {
        $(this).removeClass('hover');
    }

    var config = {
        sensitivity: 7,
        interval: 100,
        over: HoverOver,
        timeout: 100,
        out: HoverOut
    };

    $("#dnnMenu .topLevel > li.haschild").hoverIntent(config);

    $(".subLevel li.haschild").hover(HoverOver, HoverOut);

});