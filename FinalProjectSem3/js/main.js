$(document).ready(function () {
    $(".r-hoverable").hover(function (e) {
        var clr2 = $.Color(this, 'background-color').alpha('+=0.1');
        $(this).css("background-color", e.type === "mouseenter" ? clr2.toRgbaString() : "");
    });

      
    //var slideIndex = 1;

    //showSlides(slideIndex);


    //function plusSlides(n) {
    //    showSlides(slideIndex += n);
    //}

    //function currentSlide(n) {
    //    showSlides(slideIndex = n);
    //    console.log(n);
    //}

    //function showSlides(n) {
    //    var i;
    //    var slides = $(".slide");
    //    var dots = $(".dot");

    //    if (n > slides.length)
    //    {
    //        slideIndex = 1
    //    }
    //    if (n < 1)
    //    {
    //        slideIndex = slides.length;
    //        console.log(slideIndex);
    //    }
    //    for (i = 0; i < slides.length; i++)
    //    {
    //        slides[i].style.visibility = "hidden";
    //    }
    //    for (i = 0; i < dots.length; i++)
    //    {
    //        dots[i].className = dots[i].className.replace(" active", "");
    //    }
    //    slides[slideIndex - 1].style.visibility = "visible";
    //    dots[slideIndex - 1].className += " active";
    //}

    //$(".next").click(plusSlides(1));
    //$(".prev").click(plusSlides(-1));




        $(".slide").first().addClass("slider-active");
        $(".slide").hide();
        $(".slider-active").show();


    $(".next").click(function () {
        $(".slider-active").removeClass("slider-active").addClass("oActive");
        if ($(".oActive").is($(".slide:last"))) {
            $(".slide").first().addClass("slider-active");
        }
        else
        {
            $(".oActive").next().addClass("slider-active");
        }
        $(".oActive").removeClass("oActive"); 
        $(".slide").hide();
        $(".slider-active").show();
        });
    $(".prev").click(function () {
        $(".slider-active").removeClass("slider-active").addClass("oActive");
        if ($(".oActive").is($(".slide:first"))) {
            $(".slide").last().addClass("slider-active");
        }
        else {
            $(".oActive").prev().addClass("slider-active");
        }
        $(".oActive").removeClass("oActive");
        $(".slide").hide();
        $(".slider-active").show();
    });





    //otc
    productSelect();

    $(".rblProduct li").click(function (event) {
        $(".rblProduct li").find("input").attr("checked", false);
        var target = $(event.target);
        console.log(target);
        target.find("input").attr("checked", true);
        document.forms[0].submit();
    });

    function productSelect() {
        $(".rblProduct li").find("input").each(function () {
            console.log($(this));
            var attr = $(this).attr('checked');

            if (typeof attr !== typeof undefined && attr !== false) {
                $(this).parent().css("background-color", "rgba(0,0,0,0.5)");
            }
            else {
                $(this).parent().css("background-color", "rgba(0,0,0,0.3)");
            }

        });       
        
    }


    $(".showAddOffer").click(function(event){
        event.preventDefault();
        $("main").addClass("blur");
        $(".addOffer").css("display","grid");

    });
    $(".offerClose").click(function (event) {
        event.preventDefault();
        $("main").removeClass("blur");
        $(".addOffer").css("display", "none");
    });



    //mobile nav

    $(".burger a").click(function () {
        $(".burger-content").toggle(function () {
            alert("The toggle() method is finished!");
        });

    });
});
