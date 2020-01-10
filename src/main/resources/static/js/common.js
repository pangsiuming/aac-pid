
function compareProduct(obj) {
    var js;
    var url
    var href = window.location.href;
    var host = window.location.host;
    var flag = true;
    var trlist = $(obj).prev().prev().prev().find('tbody').children();
    var id = new Array(trlist.length)
    var name = new Array(trlist.length)
    for (var i = 0; i < trlist.length; i++) {
        id[i] = $(trlist).eq(i).find(".sr-only").text()
        name[i] = $(trlist).eq(i).find(".product-name").text();
    }
    for (var i = 0; i <name.length; i++) {
        if (name[i]!=name[i+1]){
            if(i==name.length-1){
                break;
            }
            alert("不同类型不能比较");
            flag = false;
            break;
        }
    }
    console.info(href.indexOf("home"))

    if (flag&&trlist.length==2) {
        if(href.indexOf("home")<0&&href.indexOf("compare")<0){
            window.location.href="/compare?id1="+id[0]+"&id2="+id[1];
        }
        var id1 = id[0];
        switch (id1) {

            case "200": url = "silmmicro";break;
            case "201": url = "silmmicro";break;
            case "202": url = "silmmicro";break;
            case "203": url = "silmmicro";break;
            case "204" : url = "silmmicro";break;
            case "205" : url = "silmmicro";break;
            case "206" : url = "silmmicro";break;
            case "207" : url = "silmmicro"; break;
            case "208" : url = "silmmicro";break;
            case "209" : url = "silmmicro";break;
            case "210" : url = "silmmicro";break;
            case "211" : url = "silmmicro";break;
            case "212" : url = "silmmicro";break;
            case "213" : url = "digitalmicro";break;
            case "214" : url = "digitalmicro";break;
            case "215" : url = "digitalmicro";break;
            case "216" : url = "digitalmicro";break;
            case "217": url = "digitalmicro";break;
            case "218": url = "piemicro";break;
            case "219": url = "premicro";break;
            case "220": url = "tuner";break;
            case "221" : url = "tuner";break;
            case "222" : url = "switch";break;
            case "223" : url = "switch";break;
            case "224" : url = "minispeaker"; break;
            case "225" : url = "minispeaker";break;
            case "226" : url = "minispeaker";break;
            case "227" : url = "minispeaker";break;
            case "228" : url = "minispeaker";break;
            case "229" : url = "minispeaker";break;
            case "230" : url = "minispeaker";break;
            case "231" : url = "minispeaker";break;
            case "232" : url = "minispeaker";break;
            case "233" : url = "minispeaker";break;
            case "234": url = "minispeaker";break;
            case "235": url = "minispeaker";break;
            case "236": url = "minispeaker";break;
            case "237": url = "minispeaker";break;
            case "238" : url = "minispeaker";break;
            case "239" : url = "minispeaker";break;
            case "240" : url = "minispeaker";break;
            case "241" : url = "minispeaker"; break;
            case "242" : url = "minispeaker";break;
            case "243" : url = "minispeaker";break;
            case "244" : url = "minispeaker";break;
            case "245" : url = "minispeaker";break;
            case "246" : url = "minispeaker";break;
            case "247" : url = "receiver";break;
            case "248" : url = "receiver";break;
            case "249" : url = "receiver";break;
            case "250" : url = "receiver";break;
            case "251": url = "receiver";break;
            case "252": url = "receiver";break;
            case "253": url = "receiver";break;
            case "254": url = "receiver";break;
            case "255" : url = "recevierspeak";break;
            case "256" : url = "recevierspeak";break;
            case "257" : url = "recevierspeak";break;
            case "258" : url = "recevierspeak"; break;
            case "259" : url = "recevierspeak";break;
            case "260" : url = "recevierspeak";break;
            case "261" : url = "recevierspeak";break;
            case "262" : url = "mediumspeak";break;
            case "263" : url = "mediumspeak";break;
            case "264" : url = "mediumspeak";break;
            case "265" : url = "mediumspeak";break;
            case "266" : url = "mediumspeak";break;
            case "267" : url = "mediumspeak";break;
            case "268": url = "mediumspeak";break;
            case "269": url = "earphone";break;
            case "270": url = "earphone";break;
            case "271": url = "chuganqi";break;
            case "272" : url = "chuganqi";break;
            case "273" : url = "chuganqi";break;
            case "274" : url = "chuganqi";break;
            case "275" : url = "chuganqi"; break;
            case "276" : url = "jiliqi";break;
            case "277" : url = "jiliqi";break;
            case "278" : url = "jiliqi";break;
            case "279" : url = "jiliqi";break;
            case "280" : url = "bujindianji";break;
            case "281" : url = "bujindianji";break;
            case "282" : url = "bujindianji";break;
            case "283" : url = "bujindianji";break;
            case "284" : url = "bujindianji";break;
            case "285": url = "sujiaolens";break;
            case "286": url = "sujiaolens";break;
            case "287": url = "sujiaolens";break;
            case "288": url = "sujiaolens";break;
            case "289" : url = "sujiaolens";break;
            case "290" : url = "sujiaolens";break;
            case "291" : url = "sujiaolens";break;
            case "292" : url = "sujiaolens"; break;
            case "293" : url = "sujiaolens";break;
            case "294" : url = "sujiaolens";break;
            case "295" : url = "sujiaolens";break;
            case "296" : url = "sujiaolens";break;
            case "297" : url = "sujiaolens";break;
            case "298" : url = "sujiaolens";break;
            case "299" : url = "sujiaolens";break;
            case "300" : url = "sujiaolens";break;
            case "301" : url = "sujiaolens";break;
            case "302": url = "sujiaolens";break;
            case "303": url = "sujiaolens";break;
            case "304": url = "sujiaolens";break;
            case "305": url = "hunhelens";break;
            case "306" : url = "hunhelens";break;
            case "307" : url = "hunhelens";break;
            case "308" : url = "bolilens";break;
            case "309" : url = "bolilens"; break;
            case "310" : url = "yinquanmada";break;
            case "311" : url = "yinquanmada";break;
            case "312" : url = "qianwangshi";break;
            case "313" : url = "qianwangshi";break;
            case "314" : url = "qianwangshi";break;
            case "315" : url = "qianwangshi";break;
            case "316" : url = "wuxiancharge";break;
            case "317" : url = "wuxiancharge";break;
            case "318" : url = "lvboqi";break;
            case "319": url = "lvboqi";break;
            case "320": url = "jizhantianxian";break;
            case "321": url = "jizhantianxian";break;
            case "322": url = "jizhantianxian";break;
            case "323" : url = "jizhantianxian";break;
            case "324" : url = "haomibotianxian";break;
            case "325" : url = "haomibotianxian";break;
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
            $("#tt").bootstrapTable('destroy');
            $('#tt').bootstrapTable({
                url: '/detail/compare?id1=' + id[0] + '&id2=' + id[1],         //请求后台的URL（*）
                method: 'get',                      //请求方式（*）
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
        $("#compareBtn").popover('hide');

    }
    if (flag&&trlist.length==3) {
        if(href.indexOf("home")<0){
            window.location.href="/home?id1="+id[0]+"&id2="+id[1]+"&id3="+id[2];
        }
        var id1 = id[0];
        switch (id1) {

            case "200": url = "silmmicro";break;
            case "201": url = "silmmicro";break;
            case "202": url = "silmmicro";break;
            case "203": url = "silmmicro";break;
            case "204" : url = "silmmicro";break;
            case "205" : url = "silmmicro";break;
            case "206" : url = "silmmicro";break;
            case "207" : url = "silmmicro"; break;
            case "208" : url = "silmmicro";break;
            case "209" : url = "silmmicro";break;
            case "210" : url = "silmmicro";break;
            case "211" : url = "silmmicro";break;
            case "212" : url = "silmmicro";break;
            case "213" : url = "digitalmicro";break;
            case "214" : url = "digitalmicro";break;
            case "215" : url = "digitalmicro";break;
            case "216" : url = "digitalmicro";break;
            case "217": url = "digitalmicro";break;
            case "218": url = "piemicro";break;
            case "219": url = "premicro";break;
            case "220": url = "tuner";break;
            case "221" : url = "tuner";break;
            case "222" : url = "switch";break;
            case "223" : url = "switch";break;
            case "224" : url = "minispeaker"; break;
            case "225" : url = "minispeaker";break;
            case "226" : url = "minispeaker";break;
            case "227" : url = "minispeaker";break;
            case "228" : url = "minispeaker";break;
            case "229" : url = "minispeaker";break;
            case "230" : url = "minispeaker";break;
            case "231" : url = "minispeaker";break;
            case "232" : url = "minispeaker";break;
            case "233" : url = "minispeaker";break;
            case "234": url = "minispeaker";break;
            case "235": url = "minispeaker";break;
            case "236": url = "minispeaker";break;
            case "237": url = "minispeaker";break;
            case "238" : url = "minispeaker";break;
            case "239" : url = "minispeaker";break;
            case "240" : url = "minispeaker";break;
            case "241" : url = "minispeaker"; break;
            case "242" : url = "minispeaker";break;
            case "243" : url = "minispeaker";break;
            case "244" : url = "minispeaker";break;
            case "245" : url = "minispeaker";break;
            case "246" : url = "minispeaker";break;
            case "247" : url = "receiver";break;
            case "248" : url = "receiver";break;
            case "249" : url = "receiver";break;
            case "250" : url = "receiver";break;
            case "251": url = "receiver";break;
            case "252": url = "receiver";break;
            case "253": url = "receiver";break;
            case "254": url = "receiver";break;
            case "255" : url = "recevierspeak";break;
            case "256" : url = "recevierspeak";break;
            case "257" : url = "recevierspeak";break;
            case "258" : url = "recevierspeak"; break;
            case "259" : url = "recevierspeak";break;
            case "260" : url = "recevierspeak";break;
            case "261" : url = "recevierspeak";break;
            case "262" : url = "mediumspeak";break;
            case "263" : url = "mediumspeak";break;
            case "264" : url = "mediumspeak";break;
            case "265" : url = "mediumspeak";break;
            case "266" : url = "mediumspeak";break;
            case "267" : url = "mediumspeak";break;
            case "268": url = "mediumspeak";break;
            case "269": url = "earphone";break;
            case "270": url = "earphone";break;
            case "271": url = "chuganqi";break;
            case "272" : url = "chuganqi";break;
            case "273" : url = "chuganqi";break;
            case "274" : url = "chuganqi";break;
            case "275" : url = "chuganqi"; break;
            case "276" : url = "jiliqi";break;
            case "277" : url = "jiliqi";break;
            case "278" : url = "jiliqi";break;
            case "279" : url = "jiliqi";break;
            case "280" : url = "bujindianji";break;
            case "281" : url = "bujindianji";break;
            case "282" : url = "bujindianji";break;
            case "283" : url = "bujindianji";break;
            case "284" : url = "bujindianji";break;
            case "285": url = "sujiaolens";break;
            case "286": url = "sujiaolens";break;
            case "287": url = "sujiaolens";break;
            case "288": url = "sujiaolens";break;
            case "289" : url = "sujiaolens";break;
            case "290" : url = "sujiaolens";break;
            case "291" : url = "sujiaolens";break;
            case "292" : url = "sujiaolens"; break;
            case "293" : url = "sujiaolens";break;
            case "294" : url = "sujiaolens";break;
            case "295" : url = "sujiaolens";break;
            case "296" : url = "sujiaolens";break;
            case "297" : url = "sujiaolens";break;
            case "298" : url = "sujiaolens";break;
            case "299" : url = "sujiaolens";break;
            case "300" : url = "sujiaolens";break;
            case "301" : url = "sujiaolens";break;
            case "302": url = "sujiaolens";break;
            case "303": url = "sujiaolens";break;
            case "304": url = "sujiaolens";break;
            case "305": url = "hunhelens";break;
            case "306" : url = "hunhelens";break;
            case "307" : url = "hunhelens";break;
            case "308" : url = "bolilens";break;
            case "309" : url = "bolilens"; break;
            case "310" : url = "yinquanmada";break;
            case "311" : url = "yinquanmada";break;
            case "312" : url = "qianwangshi";break;
            case "313" : url = "qianwangshi";break;
            case "314" : url = "qianwangshi";break;
            case "315" : url = "qianwangshi";break;
            case "316" : url = "wuxiancharge";break;
            case "317" : url = "wuxiancharge";break;
            case "318" : url = "lvboqi";break;
            case "319": url = "lvboqi";break;
            case "320": url = "jizhantianxian";break;
            case "321": url = "jizhantianxian";break;
            case "322": url = "jizhantianxian";break;
            case "323" : url = "jizhantianxian";break;
            case "324" : url = "haomibotianxian";break;
            case "325" : url = "haomibotianxian";break;
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

            $('#tt').bootstrapTable({
                url: '/detail/compare?id1=' + id[0] + '&id2=' + id[1]+'&id3='+id[2],         //请求后台的URL（*）
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
        $("#compareBtn").popover('hide');
    }
}
