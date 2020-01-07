package com.aac.pid.domain;

import lombok.Data;
import org.springframework.stereotype.Component;

/**
 * @Author:Pang SiuMing
 * @Date:2020/1/7 21:20
 */
@Data
@Component
//数字麦克风
public class DigitalMicro {
    //产品id
    private Integer dmId;
    //产品型号
    private String dmType;
    //产品尺寸
    private String dmDimension;
    //产品灵敏度
    private String dmSensitive;
    //产品信噪比
    private String dmSingal;
    //产品AOP
    private String dmAop;
    //产品进声方式
    private String dmWay;
}
