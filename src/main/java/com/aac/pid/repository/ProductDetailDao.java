package com.aac.pid.repository;

import com.aac.pid.domain.Product;
import com.aac.pid.domain.ProductDetail;
import com.aac.pid.domain.Search;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

@Mapper
public interface ProductDetailDao {

    List<ProductDetail> listProductDetail(Integer menuId);

    Integer countProductDetail(Integer menuId);

    List<ProductDetail> listProductDetailByDid(Integer parentId,Integer dimensonId);

    Integer getPidByPidAndMid(Integer parentId, Integer menuId);

    List<ProductDetail> listProductDetailBySearch(Search search);

    List<ProductDetail> listProductDetailByLikeSearch(Search search);
}
