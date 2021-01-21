require('./bootstrap');

$.ajaxSetup({
    headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

$(function () {
    $(".checkIcon").on("click", function () {
        var id = $(this).attr("data-id");
        $.ajax({
            url: "/update",
            type: "PUT",
            data: { "id": id },
            success: function (data) {
                console.log(data);
            },error: function () {
                console.log("error");
            },
        })
    })
});
