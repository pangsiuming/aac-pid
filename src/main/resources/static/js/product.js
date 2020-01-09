var js;

$(document).ready(function(){
    var url;
    var parentId = $('.parentId').val();
    var menuId = $('.menuId').val();
    var searchId = $('.searchId').val();
    var jsonlist = $('#jsonlist').val();


    switch (menuId) {
        case "37": url = "silmmicro";break;
        case "38" : url = "silmmicro";break;
        case "39" : url = "silmmicro";break;
        case "40" : url = "digitalmicro";break;
        case "41" : url = "digitalmicro";break;
        case "42" : url = "digitalmicro";break;
        case "43" : url = "piemicro";break;
        case "44" : url = "piemicro";break;
        case "45" : url = "piemicro";break;
        case "46" : url = "premicro";break;
        case "47" : url = "premicro";break;
        case "48" : url = "premicro";break;
        case "49" : url = "tuner";break;
        case "50" : url = "tuner";break;
        case "51" : url = "tuner";break;
        case "52" : url = "switch";break;
        case "53" : url = "switch";break;
        case "54" : url = "switch";break;
        case "55" : url = "minispeaker";break;
        case "56" : url = "minispeaker";break;
        case "57" : url = "minispeaker";break;
        case "58" : url = "receiver";break;
        case "59" : url = "receiver";break;
        case "60" : url = "receiver";break;
        case "61" : url = "recevierspeak";break;
        case "62" : url = "recevierspeak";break;
        case "63" : url = "recevierspeak";break;
        case "64" : url = "mediumspeak";break;
        case "65" : url = "mediumspeak";break;
        case "66" : url = "mediumspeak";break;
        case "67" : url = "earphone";break;
        case "68" : url = "earphone";break;
        case "69" : url = "earphone";break;
        case "70" : url = "chuganqi";break;
        case "71" : url = "chuganqi";break;
        case "72" : url = "chuganqi";break;
        case "73" : url = "jiliqi";break;
        case "74" : url = "jiliqi";break;
        case "75" : url = "jiliqi";break;
        case "76" : url = "bujindianji";break;
        case "77" : url = "bujindianji";break;
        case "78" : url = "bujindianji";break;
        case "79" : url = "sujiaolens";break;
        case "80" : url = "sujiaolens";break;
        case "81" : url = "sujiaolens";break;
        case "82" : url = "hunhelens";break;
        case "83" : url = "hunhelens";break;
        case "84" : url = "hunhelens";break;
        case "85" : url = "hunhelens";break;
        case "86" : url = "hunhelens";break;
        case "87" : url = "hunhelens";break;
        case "88" : url = "bolilens";break;
        case "89" : url = "bolilens";break;
        case "90" : url = "bolilens";break;
        case "91" : url = "yinquanmada";break;
        case "92" : url = "yinquanmada";break;
        case "93" : url = "yinquanmada";break;
        case "94" : url = "qianwangshi";break;
        case "95" : url = "qianwangshi";break;
        case "96" : url = "qianwangshi";break;
        case "97" : url = "qianwangshi";break;
        case "98" : url = "qianwangshi";break;
        case "99" : url = "qianwangshi";break;
        case "100" : url = "qianwangshi";break;
        case "101" : url = "qianwangshi";break;
        case "102" : url = "qianwangshi";break;
        case "103" : url = "qianwangshi";break;
        case "104" : url = "qianwangshi";break;
        case "105" : url = "qianwangshi";break;
        case "106" : url = "qianwangshi";break;
        case "107" : url = "qianwangshi";break;
        case "108" : url = "qianwangshi";break;
        case "109" : url = "wuxiancharge";break;
        case "110" : url = "wuxiancharge";break;
        case "111" : url = "wuxiancharge";break;
        case "112" : url = "lvboqi";break;
        case "113" : url = "lvboqi";break;
        case "114" : url = "lvboqi";break;
        case "115" : url = "lvboqi";break;
        case "116" : url = "lvboqi";break;
        case "117" : url = "lvboqi";break;
        case "118" : url = "lvboqi";break;
        case "119" : url = "lvboqi";break;
        case "120" : url = "lvboqi";break;
        case "121" : url = "lvboqi";break;
        case "122" : url = "lvboqi";break;
        case "123" : url = "lvboqi";break;
        case "124" : url = "jizhantianxian";break;
        case "125" : url = "jizhantianxian";break;
        case "126" : url = "jizhantianxian";break;
        case "127" : url = "haomibotianxian";break;
        case "128" : url = "haomibotianxian";break;
        case "129" : url = "haomibotianxian";break;


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
