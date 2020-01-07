package com.aac.pid.service;

import com.aac.pid.domain.ProductDetail;
import com.aac.pid.domain.Search;

import java.util.List;

/**
 * @author Peng ZhaoMing
 * @date 2019/8/29 11:47
 */
public interface ProductDetailService {

    List<ProductDetail> listProductDetail(Integer menuId);

    Integer countProductDetail(Integer menuId);

    List<ProductDetail> listProductDetailByDid(Integer parentId,Integer menuId);

    List<ProductDetail> listProductDetailBySearch(Search search);

    List<ProductDetail> listProductDetailByLikeSearch(Search search);

    List listProductByPidAndMid(Integer parentId, Integer menuId);
}
