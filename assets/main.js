$(document).ready(function() {
    var tooltips = ["top", "bottom", "left", "right"]
    for(var t in tooltips) {
        var tooltip = tooltips[t];
        $("[rel=tt-" + tooltip + "]").tooltip({
            placement : tooltip,
            container : "body"
        });
    }

    query = window.location.search
    if (query.startsWith('?pride')) {
        window.history.replaceState({}, document.title, "/");
        $('.pride').show();
    }
});
