var js;

$(document).ready(function(){
    var url;
    var id1 = $('.id1').val();
    var id2 = $('.id2').val();

    switch (id1) {
        case "79": url = "speaker";break;
        case "80": url = "speaker";break;
        case "9": url = "micro";break;
        case "10": url = "lens";break;
        case "11" : url = "lens";break;
        case "13" : url = "sensor";break;
        case "14" : url = "move";break;
        case "15" : url = "motivate"; break;
        case "17" : url = "wire";break;
        case "19" : url = "charge";break;
        case "21" : url = "switch";break;
        case "25" : url = "speaker";break;
        case "26" : url = "speaker";break;
        case "45" : url = "speaker";break;
        case "46" : url = "speaker";break;
        default : break;

    }

    $.ajax({
        url: url, //json文件位置
        type: "GET", //请求方式为get
        async: false,
        dataType: "json", //返回数据格式为json
        success: function (data) { //请求成功完成后要执行的方法
            js = data.columns

        }
    });
    $('#tt').datagrid({
        url: '/detail/compare?id1=' + id1+ '&id2=' + id2,         //请求后台的URL（*）
        method: 'get',                      //请求方式（*）
        height:510,
        view: transposedview,
        title: '产品参数',
        fit:false,
        fitColumns:false,
        singleSelect: true,
        nowrap: false,
        columns: js
    });

});
