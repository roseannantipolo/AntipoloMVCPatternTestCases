require('./bootstrap');

$(".checkIcon").on("click", function () {
    var id = $(this).attr("data-id");
    $.ajax({
        url: "/sample/update",
        type: "PUT",
        data: { id: id },
        success: function (data) {},
    });
})
