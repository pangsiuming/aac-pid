package com.aac.pid.service;

import com.aac.pid.domain.Product;

import java.util.List;

public interface ProductService {

    List<Product> listProduct(Integer page, Integer limit);

    Integer countProduct();
}