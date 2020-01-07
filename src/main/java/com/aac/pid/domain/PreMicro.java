package com.aac.pid.domain;

import lombok.Data;
import org.springframework.stereotype.Component;

/**
 * @Author: Pang SiuMing
 * @Date: 2020/1/7 21:23
 */
@Data
@Component
//气压传感器&麦克风二合一
public class PreMicro {
    //产品id
    private Integer preId;
    //产品型号
    private String preType;
    //产品尺寸
    private String preDimension;
    //产品灵敏度
    private String preSensitive;
    //产品信噪比
    private String preSingal;
    //产品AOP
    private String preAop;
    //产品进声方式
    private String preWay;
    //产品相对压力误差
    private String preRelerror;
    //产品绝对压力误差
    private String preAbserror;
    //产品噪声
    private String preNoise;
    //产品电流
    private String preCurrent;

}
