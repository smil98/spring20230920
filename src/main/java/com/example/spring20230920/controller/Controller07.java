package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main7")
public class Controller07 {

    //RequestedMapping Handler Method (aka Handler Method)
    @RequestMapping("sub1")
    public void method1() {
        System.out.println("Controller07.method1");
    }
}
