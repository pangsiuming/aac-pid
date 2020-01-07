package com.aac.pid.domain;

import lombok.Data;
import org.springframework.stereotype.Component;

/**
 * @Author: Pang SiuMing
 * @Date: 2020/1/7 21:26
 */
@Data
@Component
//天线调谐器
public class Tuner {
    //产品id
    private Integer tunId;
    //产品型号
    private String tunType;
    //产品大小
    private String tunSize;
    //产品电容个数
    private Integer tunCapno;
    //产品调谐范围（单个电容）
    private String tunRange;
    //产品Q 值@ Cmax, 800 MHz
    private String tunQvalue;
    //产品调谐分辨率
    private String tunScreen;
    //产品工作频率（Hz）
    private String tunFrequency;
}
