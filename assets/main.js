$(document).ready(function() {
    query = window.location.search
    if (query.startsWith('?pride')) {
        window.history.replaceState({}, document.title, "/");
        $('.pride').show();
    }
});
