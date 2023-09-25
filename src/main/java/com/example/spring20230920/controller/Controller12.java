package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main12")
public class Controller12 {
    @RequestMapping("sub1")
    public void method1() {}

    @RequestMapping("asub2/bsub2/csub2/dsub2/esub2")
    public void method2() {}

    @RequestMapping("sub3")
    public void method3() {}
    @RequestMapping("sub4")
    public void method4(String name, Integer age, Model model) {
        //abridged @RequestParam("name") String name

        System.out.println("Controller12.method4");
        System.out.println("Saved " + name +" and " + age);
        model.addAttribute("message", "Saved " + name + " and " + age);
    }

    @RequestMapping("sub5")
    public void method5() {}

    @RequestMapping("sub6")
    public void method6(String search, Model model) {
        model.addAttribute("search", search);
    }
}
