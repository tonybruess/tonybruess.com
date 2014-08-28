//= require_tree .

$(document).ready(function() {
    var tooltips = ["top", "bottom", "left", "right"]
    for(var t in tooltips) {
        var tooltip = tooltips[t];
        $("[rel=tt-" + tooltip + "]").tooltip({
            placement : tooltip,
            container : "body"
        });
    }

    $(".modal").on("show.bs.modal", function(e) {
        $("[rel=tt-top]").tooltip("hide");
    });
});
