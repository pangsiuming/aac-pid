package com.aac.pid.controller;


import com.aac.pid.domain.Menu;
import com.aac.pid.domain.ProductDetail;
import com.aac.pid.domain.Search;
import com.aac.pid.service.MenuService;
import com.aac.pid.service.ProductDetailService;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Peng ZhaoMing
 * @date 2019/9/7 11:30
 */
@Controller
public class DetailSearchController {
    @Autowired
    ProductDetailService detailService;

    @Autowired
    MenuService menuService;


    @RequestMapping("search")
    public String getDetailList(Model model, Search search) {
        List<ProductDetail> list;
        List<Menu> menu = menuService.listMenu();
        model.addAttribute("menuList", menu);
        if (search.getSearchType() == "amb") {
            list = detailService.listProductDetailByLikeSearch(search);
        } else {
            list = detailService.listProductDetailBySearch(search);
        }
        if(list != null) {
            String sjson = JSONArray.toJSONString(list);
            model.addAttribute("list", sjson);
        }
        model.addAttribute("searchId", search.getSearchId());
        return "searchhome";
    }


}
