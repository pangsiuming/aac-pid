package com.aac.pid.controller;

import com.aac.pid.domain.ProductDetail;
import com.aac.pid.service.ProductDetailService;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author Peng ZhaoMing
 * @date 2019/8/29 10:29
 */
@RestController
@RequestMapping("detail")
public class ProductDetailController {

    @Autowired
    private ProductDetailService detailService;

//    @GetMapping("list")
//    public JSONObject getDetailList(@RequestParam("menuId") Integer menuId ){
//        List<ProductDetail> list = detailService.listProductDetail(menuId);
//        JSONObject json = new JSONObject();
//        json.put("rows",list);
//        json.put("total",50);
//        return json;
//    }

    @GetMapping("list")
    public JSONObject getDiemsonList(@RequestParam("parentId") Integer parentId ,@RequestParam("menuId") Integer menuId){
        List<ProductDetail> list = detailService.listProductDetailByDid(parentId,menuId);
        JSONObject json = new JSONObject();
        json.put("rows",list);
        json.put("total",50);
        return json;
    }
    @GetMapping("listpro")
    public JSONObject getProduct(@RequestParam("parentId") Integer parentId ,@RequestParam("menuId") Integer menuId){
        List list = detailService.listProductByPidAndMid(parentId,menuId);
        JSONObject json = new JSONObject();
        json.put("rows",list);
        json.put("total",50);
        return json;
    }



    @GetMapping("compare")
    public JSONObject compareProduct(@RequestParam("id1") Integer id1,@RequestParam("id2") Integer id2){
        List<ProductDetail> list1 = detailService.listProductDetail(id1);
        List<ProductDetail> list2 = detailService.listProductDetail(id2);
        list1.addAll(list2);
        JSONObject json = new JSONObject();
        json.put("rows",list1);
        json.put("total",50);
        return json;
    }
}
