package com.aac.pid.domain;

import lombok.Data;
import org.springframework.stereotype.Component;

import java.io.Serializable;

@Data
@Component
public class Product implements Serializable {

    // 产品ID
    private Integer productId;
    // 产品名
    private String productName;
    //产品类型ID
    private Integer productTypeId;
    //产品图片
    private String productIcon;
}
