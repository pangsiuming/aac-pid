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

    @RequestMapping(value = "/silmmicro")
    public String silmmicro() {

        return "silmmicro.json";
    }
    @RequestMapping(value = "/speaker")
    public String speaker() {

        return "speaker.json";
    }
    @RequestMapping(value = "/micro")
    public String micro() {

        return "micro.json";
    }
    @RequestMapping(value = "/wire")
    public String wire() {

        return "wire.json";
    }
    @RequestMapping(value = "/lens")
    public String lens() {

        return "lens.json";
    }
    @RequestMapping(value = "/move")
    public String move() {

        return "move.json";
    }
    @RequestMapping(value = "/motivate")
    public String motivate() {

        return "motivate.json";
    }
    @RequestMapping(value = "/charge")
    public String charge() {

        return "charge.json";
    }
    @RequestMapping(value = "/switch")
    public String switch1() {

        return "switch.json";
    }


}
