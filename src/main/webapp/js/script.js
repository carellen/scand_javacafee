$(document).ready(function () {

    $.ajax({
       url: 'webapi/menu',
       method: 'get',
        dataType: 'json',
        success: function (data) {
            buildMenu($('#menubar'), data);
            buildOrderTable($('#bodyofordertable'), data);
        },
        error: function (err) {
            alert(err.statusText);
        }
    });


    function buildMenu(parent, items) {
        $.each(items, function () {
            var span = $('<div class="input-group">' +
                '<span class="input-group-addon" id="id" style="display: none">'  + this.id +  '</span>' +
                '<span class="input-group-addon" id="price">' + '\$' + this.price +  '</span>' +
                '<span class="input-group-addon" id="name">' + this.name + '</span>' +
                '<input type="text" class="form-control" aria-label="Text input with checkbox" oninput="inputFunction(this)">' + '</div>');
            span.appendTo(parent);
        });
    }
    function buildOrderTable(parent, items) {

        $.each(items, function () {
            var newtr = $('<tr id="rowofordertable" class="hidden">'+
                '<td class="productid">' +  this.id + '</td>' +
                '<td class="coffeename">' + this.name + '</td>' +
                '<td class="coffeeqnty">' + 0 + '</td>' +
                '<td class="coffeetotprc">' + 0 + '</td>' +
                '</tr>');
            newtr.appendTo(parent);
        });
    }
});

function inputFunction(c) {
    var value = $(c).val();
    var parentName = $(c).parent('.input-group');
    var productid = $(parentName).children('span#id').text();
    var price = $(parentName).children('span#price').text().substr(1);
    var tablerow = $("td.productid:contains('" + productid + "')");
    var trparent = $(tablerow).parent('#rowofordertable');
    var totalrowprice = value * price;
    var tdquantity =  $(trparent).children('.coffeeqnty');
    if (value > 0) {
        parentName.css('background', 'bisque');
        $(tdquantity).text(value);
        $(trparent).children('.coffeetotprc').text(totalrowprice + ' \$');
        $(trparent).removeClass();
    } else {
        parentName.css('background', 'transparent');
        $(tdquantity).text(0);
        $(trparent).children('.coffeetotprc').text(0);
        $(trparent).addClass('hidden');
    }
    var totalquantity = 0;
    var totalcost = 0;
    $.each($('.coffeeqnty'), function () {
        totalquantity += parseInt($(this).text());
    });
    $.each($('.coffeetotprc'), function () {
        totalcost += parseInt($(this).text());
    });
    $('td#totalquantity').text(totalquantity);
    $('td#totalprice').text(totalcost);
    if (totalquantity) {
        $('button#addressbutton').removeClass('hidden');
    } else {
        $('button#addressbutton').addClass('hidden');
    }
}

function acceptFunction() {
    var pair = [];
    var orderlist = [];
    $.each($('.coffeeqnty'), function () {
        if ($(this).text() > 0) {
            var id = $(this).siblings('.productid').text();
            var qnty = $(this).text();
            pair = {"productId": id, "productQuantity": qnty};
            orderlist.push(pair);
        }
    });
    var address = {
        "name": $('input[name="name"]').val(),
        "phone": $('input[name="phone"]').val(),
        "street": $('input[name="street"]').val(),
        "house": $('input[name="house"]').val(),
        "flat": $('input[name="flat"]').val()};


    $.ajax({

        url: 'webapi/myresource',
        method: 'post',
        data: JSON.stringify({list: orderlist, address: address}),
        contentType: "application/json",
        dataType: 'json',
        success: function () {
            alert('Order accepted!');
        },
        error: function (err) {
            alert(err.statusText);
        }
    });
}