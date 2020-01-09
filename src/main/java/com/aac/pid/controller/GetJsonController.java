package com.aac.pid.controller;

import com.aac.pid.domain.Menu;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author Peng ZhaoMing
 * @date 2019/9/19 11:53
 */
@Controller
public class GetJsonController {
    //Mems
    @RequestMapping(value = "/silmmicro")
    public String silmmicro() {

        return "json/silmmicro.json";
    }

    @RequestMapping(value = "/digitalmicro")
    public String digitalmicro() {

        return "json/digitalmicro.json";
    }

    @RequestMapping(value = "/piemicro")
    public String piemicro() {

        return "json/piemicro.json";
    }

    @RequestMapping(value = "/premicro")
    public String premicro() {

        return "json/premicro.json";
    }

    @RequestMapping(value = "/tuner")
    public String tuner() {

        return "json/tuner.json";
    }
    @RequestMapping(value = "/switch")
    public String getSwitch() {

        return "json/switch.json";
    }

    //声学
    @RequestMapping(value = "/minispeaker")
    public String minispeaker() {

        return "json/minispeaker.json";
    }


    @RequestMapping(value = "/receiver")
    public String receiver() {

        return "json/receiver.json";
    }
    @RequestMapping(value = "/recevierspeak")
    public String recevierspeak() {

        return "json/recevierspeak.json";
    }
    @RequestMapping(value = "/mediumspeak")
    public String mediumspeak() {

        return "json/mediumspeak.json";
    }

    @RequestMapping(value = "/earphone")
    public String earphone() {

        return "json/earphone.json";
    }
    //电磁转动类
    @RequestMapping(value = "/chuganqi")
    public String chuganqi() {

        return "json/chuganqi.json";
    }
    @RequestMapping(value = "/jiliqi")
    public String jiliqi() {

        return "json/jiliqi.json";
    }
    @RequestMapping(value = "/bujindianji")
    public String bujindianji() {

        return "json/bujindianji.json";
    }
    //光学
    @RequestMapping(value = "/sujiaolens")
    public String sujiaolens() {

        return "json/sujiaolens.json";
    }
    @RequestMapping(value = "/hunhelens")
    public String hunhelens() {

        return "json/hunhelens.json";
    }@RequestMapping(value = "/bolilens")
    public String bolilens() {

        return "json/bolilens.json";
    }
    @RequestMapping(value = "/yinquanmada")
    public String yinquanmada() {

        return "json/yinquanmada.json";
    }
    @RequestMapping(value = "/qianwangshi")
    public String qianwangshi() {

        return "json/qianwangshi.json";
    }
    //精密器件
    @RequestMapping(value = "/wuxiancharge")
    public String wuxiancharge() {

        return "json/wuxiancharge.json";
    }
    @RequestMapping(value = "/lvboqi")
    public String lvboqi() {

        return "json/lvboqi.json";
    }
    @RequestMapping(value = "/jizhantianxian")
    public String jizhantianxian() {

        return "json/jizhantianxian.json";
    }
    @RequestMapping(value = "/haomibotianxian")
    public String haomibotianxian() {

        return "json/haomibotianxian.json";
    }




}
