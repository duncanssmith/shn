$('#myCarousel').carousel({
    interval: 5000
});

// handles the carousel thumbnails
$('[id^=carousel-selector-]').click( function(){

    var thumb_id = "carousel-selector-";
    var id_selector = $(this).attr("id");
    var id = parseInt(id_selector.substr(thumb_id.length));

    $('#myCarousel').carousel(id);
    $('[id^=carousel-selector-]').removeClass('selected');
    $(this).addClass('selected');
});

// when the carousel slides, update the thumbnail
$('#myCarousel').on('slid.bs.carousel', function (e) {
    var id = $('.item.active').data('slide-number');
    id = parseInt(id);

    $('[id^=carousel-selector-]').removeClass('selected');
    $('[id=carousel-selector-'+id+']').addClass('selected');
});
