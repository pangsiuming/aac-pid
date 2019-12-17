function openMenu(obj) {
    typeId = $(obj).attr('menuid');
    $("#light" + typeId).toggle();
    setProductId(obj);
}

function setProductId(obj) {
    var id = $(obj).attr('menuid');
    var type = $(obj).attr('menutype');
    var pid = $(obj).attr('menupid');

    switch (type) {
        case 'detail':
            window.open('/home?parentId=' + pid+'&menuId='+id);
            break;
        case 'search':
            //$('#tt').hide();
            $('#display_refresh').hide();
            $('#searchDIV').load('/search/param/' + id, null, function (response, status, xhr) {
                $('#search_refresh').show();
            });
            break;
        case 'img':
            $('#search_refresh').hide();
            $('#display_refresh').show();
            break;
    }
}