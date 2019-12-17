package com.aac.pid.service.impl;

import com.aac.pid.domain.Product;
import com.aac.pid.repository.ProductDao;
import com.aac.pid.service.ProductService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("productServiceImpl")
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;

    @Override
    public List<Product> listProduct(Integer page, Integer limit) {
        if (page > 0) {
            page--;
        }
        RowBounds rb = new RowBounds(page * limit, limit);
        List<Product> product = productDao.listProduct(rb);
        return product;
    }

    @Override
    public Integer countProduct() {
        Integer count = productDao.countProduct();
        return count;
    }
}
