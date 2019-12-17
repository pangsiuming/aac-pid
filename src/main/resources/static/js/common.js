function compareProduct(obj) {
    var href = window.location.href;

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
        $('#tt').datagrid({
            url: '/detail/compare?id1=' + id[0] + '&id2=' + id[1],         //请求后台的URL（*）
            method: 'get',                      //请求方式（*）
            height:510,
            view: transposedview,
            title: '产品参数',
            fit: false,
            fitColumns: false,
            singleSelect: true,
            nowrap: false,
            columns: [
                [
                    {
                        field: 'detailPn', title: 'Part No', formatter: function (a, b, c, d) {
                            return "<a href='http://www.baidu.com'>" + a + "</a>"
                        }
                    },
                    {
                        field: 'detailAp', title: 'Apperance', formatter: function (a, b, c, d) {
                            return "<a href='http://www.baidu.com'>" + a + "</a>"
                        }
                    },
                    {field: 'detailDi', title: 'Dimension(mm)'},
                    {field: 'detailPo', title: 'Power(W)'},
                    {field: 'detailDc', title: 'D.C(ohm)'},
                    {field: 'detailAc', title: 'A.C(ohm)'},
                    {field: 'detailFo', title: 'F0(Hz)'},
                    {field: 'detailSe', title: 'Sensitivity(dB)'},
                    {field: 'detailTh', title: 'THD'},
                    {
                        field: 'detailFrg', title: 'Frequency Response Graph', formatter: function (a, b, c, d) {
                            return "<a href='http://www.baidu.com'>" + a + "</a>"
                        }
                    },
                    {
                        field: 'detailThg', title: 'THD Graph', formatter: function (a, b, c, d) {
                            return "<a href='http://www.baidu.com'>" + a + "</a>"
                        }
                    },
                    {
                        field: 'detailHog', title: 'HOHD Graph', formatter: function (a, b, c, d) {
                            return "<a href='http://www.baidu.com'>" + a + "</a>"
                        }
                    },
                    {field: 'detailFc', title: 'Front Cover'},
                    {field: 'detailCo', title: 'Contact'},
                    {field: 'detailWa', title: 'Waterproof'},
                    {field: 'detailTwo', title: 'Two in one'},
                    {field: 'detailSt', title: 'Status'},
                    {field: 'detailLt', title: 'Life time'},
                    {field: 'detailAl', title: 'Auto-Line'},
                    {field: 'detailSto', title: 'Stock'},
                    {
                        field: 'detailSpec', title: 'SPEC', formatter: function (a, b, c, d) {
                            return "<a href='http://www.baidu.com'>" + a + "</a>"
                        }
                    },
                    {field: 'detailNo', title: 'Noted'},
                    {field: 'detailEn', title: 'R&D Engineer'},
                    {field: 'detailTel', title: 'Tel'}
                ]
            ]
        });
        $("#compareBtn").popover('hide');

    }
    if (flag&&trlist.length==3) {
        if(href.indexOf("home")<0){
            window.location.href="/home?id1="+id[0]+"&id2="+id[1]+"&id3="+id[2];
        }
        $('#tt').datagrid({
            url: '/detail/compare?id1=' + id[0] + '&id2=' + id[1]+'&id3='+id[2],         //请求后台的URL（*）
            method: 'get',                      //请求方式（*）
            height:510,
            view: transposedview,
            title: '产品参数',
            fit: false,
            fitColumns: false,
            singleSelect: true,
            nowrap: false,
            columns: [
                [
                    {
                        field: 'detailPn', title: 'Part No', formatter: function (a, b, c, d) {
                            return "<a href='http://www.baidu.com'>" + a + "</a>"
                        }
                    },
                    {
                        field: 'detailAp', title: 'Apperance', formatter: function (a, b, c, d) {
                            return "<a href='http://www.baidu.com'>" + a + "</a>"
                        }
                    },
                    {field: 'detailDi', title: 'Dimension(mm)'},
                    {field: 'detailPo', title: 'Power(W)'},
                    {field: 'detailDc', title: 'D.C(ohm)'},
                    {field: 'detailAc', title: 'A.C(ohm)'},
                    {field: 'detailFo', title: 'F0(Hz)'},
                    {field: 'detailSe', title: 'Sensitivity(dB)'},
                    {field: 'detailTh', title: 'THD'},
                    {
                        field: 'detailFrg', title: 'Frequency Response Graph', formatter: function (a, b, c, d) {
                            return "<a href='http://www.baidu.com'>" + a + "</a>"
                        }
                    },
                    {
                        field: 'detailThg', title: 'THD Graph', formatter: function (a, b, c, d) {
                            return "<a href='http://www.baidu.com'>" + a + "</a>"
                        }
                    },
                    {
                        field: 'detailHog', title: 'HOHD Graph', formatter: function (a, b, c, d) {
                            return "<a href='http://www.baidu.com'>" + a + "</a>"
                        }
                    },
                    {field: 'detailFc', title: 'Front Cover'},
                    {field: 'detailCo', title: 'Contact'},
                    {field: 'detailWa', title: 'Waterproof'},
                    {field: 'detailTwo', title: 'Two in one'},
                    {field: 'detailSt', title: 'Status'},
                    {field: 'detailLt', title: 'Life time'},
                    {field: 'detailAl', title: 'Auto-Line'},
                    {field: 'detailSto', title: 'Stock'},
                    {
                        field: 'detailSpec', title: 'SPEC', formatter: function (a, b, c, d) {
                            return "<a href='http://www.baidu.com'>" + a + "</a>"
                        }
                    },
                    {field: 'detailNo', title: 'Noted'},
                    {field: 'detailEn', title: 'R&D Engineer'},
                    {field: 'detailTel', title: 'Tel'}
                ]
            ]
        });
        $("#compareBtn").popover('hide');
    }
}
