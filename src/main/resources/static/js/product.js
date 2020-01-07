var js;

$(document).ready(function(){
    var url;
    var parentId = $('.parentId').val();
    var menuId = $('.menuId').val();
    var searchId = $('.searchId').val();
    var jsonlist = $('#jsonlist').val();


    switch (menuId) {
        case "37": url = "silmmicro";break;
        case "7": url = "digmicro";break;
        case "8": url = "piemicro";break;
        case "9": url = "premicro";break;
        case "10" : url = "tuner";break;
        case "11" : url = "switch";break;
        case "14" : url = "move";break;
        case "15" : url = "motivate"; break;
        case "17" : url = "wire";break;
        case "19" : url = "charge";break;
        case "21" : url = "switch";break;
        case "25" : url = "speaker";break;
        case "26" : url = "speaker";break;
        case "27" : url = "speaker";break;
        case "28" : url = "speaker";break;
        case "38" : url = "speaker";break;
        case "39" : url = "speaker";break;
        case "30" : url = "speaker";break;
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
    if (searchId!=null){
        $('#tt').bootstrapTable({
            // url: '/detailsearch',         //请求后台的URL（*）
            // method: 'POST',                      //请求方式（*）
            data:JSON.parse(jsonlist),
            height:510,
            title: '产品参数',
            fit:false,
            fitColumns:false,
            singleSelect: true,
            nowrap: false,
            columns:
                [
                    [
                        {
                            "field": "detailPn",
                            "title": "Part No"
                        },
                        {
                            "field": "detailAp",
                            "title": "Apperance"
                        },
                        {
                            "field": "detailDi",
                            "title": "Dimension(mm)"
                        },
                        {
                            "field": "detailXmax",
                            "title": "X-max"
                        },
                        {
                            "field": "detailPo",
                            "title": "Power(W)"
                        },
                        {
                            "field": "detailDc",
                            "title": "D.C(ohm)"
                        },
                        {
                            "field": "detailAc",
                            "title": "A.C(ohm)"
                        },
                        {
                            "field": "detailFo",
                            "title": "F0(Hz)"
                        },
                        {
                            "field": "detailSe",
                            "title": "Sensitivity(dB)"
                        },
                        {
                            "field": "detailTh",
                            "title": "THD"
                        },
                        {
                            "field": "detailFrg",
                            "title": "Frequency Response Graph"
                        },
                        {
                            "field": "detailThg",
                            "title": "THD Graph"
                        },
                        {
                            "field": "detailHog",
                            "title": "HOHD Graph"
                        },
                        {
                            "field": "detailFc",
                            "title": "Front Cover"
                        },
                        {
                            "field": "detailCo",
                            "title": "Contact"
                        },
                        {
                            "field": "detailWa",
                            "title": "Waterproof"
                        },
                        {
                            "field": "detailTwo",
                            "title": "Two in one"
                        }

                    ]
                ]

        });

    }

    else {
        $('#tt').bootstrapTable({
            url: '/detail/list?parentId=' + parentId + '&menuId=' + menuId,         //请求后台的URL（*）
            method: 'get',                      //请求方式（*）
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
    }
});
