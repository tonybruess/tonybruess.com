$(document).ready(function() {
    $(".r").each(function() {
        var element = $(this);
        var deg = $(this).css('word-spacing').replace('px', '');

        element.css('transform', 'rotate(0deg) translate(0px) rotate(0deg)');
        element.css('word-spacing', 0);

        element.animate({borderRadius : 200, wordSpacing : deg}, {
            step : function(now, fx) {
                var trans = element.css('border-radius').replace('px', '');
                var rot = element.css('word-spacing');

                if(fx.prop == "borderRadius") {
                    trans = now;
                } else if(fx.prop == "wordSpacing") {
                    rot = now;
                }

                element.css('transform', 'rotate(' + rot + 'deg) translate(' + trans + 'px) rotate(-' + rot + 'deg)')
            },
            duration : 1000,
        })
    });
});
