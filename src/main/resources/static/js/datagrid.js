var js;

$(document).ready(function(){
    var url;
    var parentId = $('.parentId').val();
    var menuId = $('.menuId').val();
    var searchId = $('.searchId').val();
    var jsonlist = $('#jsonlist').val();


    switch (menuId) {
        case "7": url = "speaker";break;
        case "8": url = "speaker";break;
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
        $('#tt').datagrid({
            // url: '/detailsearch',         //请求后台的URL（*）
            // method: 'POST',                      //请求方式（*）
            data:JSON.parse(jsonlist),
            height:510,
            view: transposedview,
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
        $('#tt').datagrid({
            url: '/detail/list?parentId=' + parentId + '&menuId=' + menuId,         //请求后台的URL（*）
            method: 'get',                      //请求方式（*）
            height:510,
            view: transposedview,
            title: '产品参数',
            fit: false,
            fitColumns: false,
            singleSelect: true,
            nowrap: true,
            columns: js

        });
    }
});
