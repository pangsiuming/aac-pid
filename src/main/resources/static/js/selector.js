$(function () {
    $('[data-submenu]').submenupicker();
    $("#compareBtn").popover({
        trigger: 'click',
        container: 'body',
        title: '产品对比',
        placement: 'left',
        html: true,
        content: $('.compareDIV')
    });
});

function addRow(obj) {
    var rowHTML = '<tr><td class="sr-only">' + $(obj).attr('menuid') + '</td><td class="product-name">' + $(obj).parent().parent().parent().prev().text() + '</td><td>' + $(obj).parent().prev().text() + '</td><td>' + $(obj).text() + '</td><td><a class="pointerA" onclick="delRow(this)"><span>&times;</span></a></td></tr>';
    $('#compareTable tbody').append(rowHTML);
    $("#compareBtn").popover('hide');
    $("#compareBtn").popover('show');
}

function delRow(obj) {
    $(obj).parent().parent().remove();
    $("#compareBtn").popover('hide');
    $("#compareBtn").popover('show');
}