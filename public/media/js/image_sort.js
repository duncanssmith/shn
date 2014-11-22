$(function () {
    $( "#banners" ).sortable({
        items: "tr",
        cursor: 'move',
        opacity: 0.6,
        update: function () {
            sendOrderToServer();
        }
    });
});

function sendOrderToServer() {
    var order = $("#banners").sortable("serialize");
    console.log(order);

    $.ajax({
        type: "POST", dataType: "json", url: "/edit/banner/order",
        data: order,
        success: function(response) {
            if (response.status  != "") {
                console.log(response.status);
            } else {
                console.log('error');
                alert('Some error occurred');
            }
        }
    });
}
