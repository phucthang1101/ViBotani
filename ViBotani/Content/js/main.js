$(document).ready(function () {
    console.log($('#mynav').height());
    $('body').css('padding-top', $('#mynav').height() + 16 + "px");
})
$('.agency_model').owlCarousel({
    loop: true,
    margin: 10,
    responsiveClass: true,
    responsive: {
        0: {
            items: 2,
            nav: true
        },
        600: {
            items: 3,
            nav: false
        },
        1000: {
            items: 4,
            nav: true,
            loop: false
        }
    }
})
$("#search_close").on("click", function () {
    $(this).addClass("d-none");
    $("#search_open").removeClass("d-none");
    $("#search_container").addClass("d-none");
});
$("#search_open").on("click", function () {
    $(this).addClass("d-none");
    $("#search_close").removeClass("d-none");
    $("#search_container").removeClass("d-none");
});
$('#product-detail-carousel').owlCarousel({
    loop: true,
    margin: 10,
    responsiveClass: true,
    responsive: {
        0: {
            items: 1,
            nav: true
        },
        600: {
            items: 2,
            nav: false
        },
        1000: {
            items: 3,
            nav: true,
            loop: false
        }
    }
})

$('#modal-agency-condition .r-close').on('click', function () {
    $('#modal-agency-condition').modal('hide');
})
$('.carousel').carousel({
    interval: 2000
})
