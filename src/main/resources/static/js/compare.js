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
        case "58" : url = "silmmicro";break;
        case "59" : url = "silmmicro";break;
        default : break;

    }

    $.ajax({
        url: "http://"+window.location.host+"/"+url, //json文件位置
        type: "GET", //请求方式为get
        async: false,
        dataType: "json", //返回数据格式为json
        success: function (data) { //请求成功完成后要执行的方法
            js = data.columns

        }
    });
        $('#tt').bootstrapTable({
            url: '/detail/compare?id1=' + id1+ '&id2=' + id2,         //请求后台的URL（*）
            method: 'get',                      //请求方式（*）                   //请求方式（*）
            height:510,
            title: '产品参数',
            pagination: true, //获得分页功能
            pageSize: 10, //默认分页数量
            pageList: [5, 10, 15, 20], //分页数量选项
            search: true, //获得一个搜索框
            searchOnEnterKey: true, //按下回车才进行搜索（false的时候是即时搜索）

            showColumns: true, //获得一个能选择显示某些列的按钮
            showRefresh: true, //获得一个刷新数据按钮
            showToggle: true, //获得一个切换为卡片式表格的按钮

            toolbar: "#toolbar", //工具栏
            theadClasses: "thead-blue",//设置thead-blue为表头样式
            fit: false,
            fitColumns: false,
            singleSelect: true,
            nowrap: true,
            columns: js

        });

});
