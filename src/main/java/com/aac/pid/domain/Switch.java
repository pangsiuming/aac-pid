package com.aac.pid.domain;

import lombok.Data;
import org.springframework.stereotype.Component;

/**
 * @Author: Pang SiuMing
 * @Date: 2020/1/7 21:34
 */
@Data
@Component
//天线开关
public class Switch {
    //产品id
    private Integer swId;
    //产品型号
    private String swType;
    //产品大小
    private String swSize;
    //产品开关类型
    private String swStype;
    //产品射频输入功率（dBm）
    private String swPower;
    //产品最大射频电压(V)
    private String swVoltage;
    //产品导通电阻(Ω)
    private String swResistance;
    //产品关断电容(fF)
    private String tunCapacity;
}
