var page = 1;
var limit = 1;
var count = 0;
var maxPage = 1;
var typeId = 0;

$(function () {
    setLimit($('#pageLimit')[0]);
});

function getProduct() {
    $('#display_main').load("/product/list", {
        limit: limit,
        page: page
    }, function (response, status, xhr) {
        count = $('#productCount').val();
        maxPage = Math.ceil(count / limit);
        // if (page == 1 && maxPage == 1) {
        //     $('#btnLast, #btnNext').hide();
        // } else if (page == 1) {
        //     $('#btnLast').hide();
        //     $('#btnNext').show();
        // } else if (page == maxPage) {
        //     $('#btnLast').show();
        //     $('#btnNext').hide();
        // } else {
        //     $('#btnNext, #btnLast').show();
        // }
    });
}

function setLimit(obj) {
    limit = obj.value;
    getProduct();
}

function setPage(pg) {
    if (pg <= maxPage && pg != page) {
        page = pg;
        getProduct();
    }
}

function lastPage() {
    if (page > 1) {
        page--;
        getProduct();
    }
}

function nextPage() {
    if (page < maxPage) {
        page++;
        getProduct();
    }
}