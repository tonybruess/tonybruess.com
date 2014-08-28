$(document).ready(function() {
    $(".r").each(function() {
        var element = $(this);
        var deg = element.data('rot');
        var animate = {
            rot : 0,
            pos : 0,
        };

        $(animate).animate({rot : deg, pos : 200}, {
            step : function(now, fx) {
                var pos = fx.elem.pos;
                var rot = fx.elem.rot;

                if(fx.prop == "pos") {
                    pos = now;
                } else if(fx.prop == "rot") {
                    rot = now;
                }

                element.css('transform', 'rotate(' + rot + 'deg) translate(' + pos + 'px) rotate(-' + rot + 'deg)')
            },
            duration : 1000,
        })
    });
});
