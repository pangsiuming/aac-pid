package com.aac.pid.controller;

import com.aac.pid.domain.Product;
import com.aac.pid.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/list")
    public String listProduct(Model model, Integer page, Integer limit) {
        List<Product> product = productService.listProduct(page, limit);
        Integer max = productService.countProduct();
        model.addAttribute("productList", product);
        model.addAttribute("productCount", max);
        return "display::display_main";
    }

    @GetMapping(value = "/max")
    @ResponseBody
    public Integer countPage() {
        Integer max = productService.countProduct();
        return max;
    }
}