package com.aac.pid.domain;

import lombok.Data;
import org.springframework.stereotype.Component;

/**
 * @Author: Pang SiuMing
 * @Date: 2020/1/7 21:22
 */
//压电式麦克风
 @Data
 @Component
public class PieMicro {
    //产品id
    private Integer piId;
    //产品型号
    private String piType;
    //产品尺寸
    private String piDimension;
    //产品灵敏度
    private String piSensitive;
    //产品信噪比
    private String piSingal;
    //产品AOP
    private String piAop;
    //产品进声方式
    private String piWay;
}
