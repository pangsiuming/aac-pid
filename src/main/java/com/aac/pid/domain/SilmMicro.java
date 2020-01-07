package com.aac.pid.domain;

import lombok.Data;
import org.springframework.stereotype.Component;

@Data
@Component
//模拟麦克风
public class SilmMicro {

    //产品id
    private Integer smId;
    //产品型号
    private String smType;
    //产品尺寸
    private String smDimension;
    //产品灵敏度
    private String smSensitive;
    //产品信噪比
    private String smSingal;
    //产品AOP
    private String smAop;
    //产品进声方式
    private String smWay;

}
