$(document).ready(function () {
    $(".r-hoverable").hover(function (e) {
        var clr2 = $.Color(this, 'background-color').alpha('+=0.1');
        $(this).css("background-color", e.type === "mouseenter" ? clr2.toRgbaString() : "")
    });

});
