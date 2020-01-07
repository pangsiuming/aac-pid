package com.aac.pid.service.impl;

import com.aac.pid.domain.ProductDetail;
import com.aac.pid.domain.Search;
import com.aac.pid.repository.ProductDetailDao;
import com.aac.pid.service.ProductDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Peng ZhaoMing
 * @date 2019/8/29 11:47
 */
@Service
public class ProductDetailServiceImpl implements ProductDetailService {
    @Autowired
    private ProductDetailDao productDetailDao;


    @Override
    public List<ProductDetail> listProductDetail(Integer menuId) {
        return productDetailDao.listProductDetail(menuId);
    }

    @Override
    public Integer countProductDetail(Integer menuId) {
        return productDetailDao.countProductDetail(menuId);
    }


    @Override
    public List<ProductDetail> listProductDetailByDid(Integer parentId,Integer menuId) {
        Integer did = productDetailDao.getPidByPidAndMid(parentId,menuId);
        if (did != null){
            return productDetailDao.listProductDetailByDid(parentId,did);
        }
        return null;
    }

    @Override
    public List<ProductDetail> listProductDetailBySearch(Search search) {
        return productDetailDao.listProductDetailBySearch(search);
    }

    @Override
    public List<ProductDetail> listProductDetailByLikeSearch(Search search) {
        return productDetailDao.listProductDetailByLikeSearch(search);
    }

    @Override
    public List listProductByPidAndMid(Integer parentId, Integer menuId) {
        switch (parentId){
            case 6:{
                switch (menuId){
                    case 37:{
                    }
                    default:{

                    }
                }

            }
            case 7:{
                switch (menuId){
                    case 37:{

                    }
                    default:{

                    }
                }

            }
            case 8:{
                switch (menuId){
                    case 37:{

                    }
                    default:{

                    }
                }

            }
            case 9:{
                switch (menuId){
                    case 37:{

                    }
                    default:{

                    }
                }

            }
            case 10:{
                switch (menuId){
                    case 37:{

                    }
                    default:{

                    }
                }

            }
            case 11:{
                switch (menuId){
                    case 37:{

                    }
                    default:{

                    }
                }

            }
            case 12:{
                switch (menuId){
                    case 37:{

                    }
                    default:{

                    }
                }

            }
            default:{

            }
        }
        return null;
    }
}
