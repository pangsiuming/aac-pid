package com.aac.pid.repository;

import com.aac.pid.domain.Product;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

@Mapper
public interface ProductDao {

    List<Product> listProduct(RowBounds rb);

    Integer countProduct();
}
