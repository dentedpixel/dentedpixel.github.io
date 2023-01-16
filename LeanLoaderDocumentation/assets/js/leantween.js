$(function() {

    var $sidebar   = $("#advertising"), 
        $window    = $(window),
        offset     = $sidebar.offset(),
        topPadding = 35;

    $window.scroll(function() {
        if ($window.scrollTop() > offset.top) {
            $sidebar.stop().animate({
                marginTop: $window.scrollTop() - offset.top + topPadding
            }, 0.0);
        } else {
            $sidebar.stop().animate({
                marginTop: 0
            }, 0.0);
        }
    });
});