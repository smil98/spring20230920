package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto9;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main11")
public class Controller11 {
    @RequestMapping("sub1")
    public void method1() {}

    @RequestMapping("sub2")
    public void method2() {}

    @RequestMapping("sub3")
    public void method3() {}

    @RequestMapping({"sub4", "sub5", "sub6"})
    public void method4() {}

    @RequestMapping("sub7")
    public void method5(@RequestParam(value = "show", defaultValue = "false") Boolean show, Model model) {
        if(show) {
            List<MyDto9> list = new ArrayList<>();
            list.add(new MyDto9(31L, "son", "hm", "football", "010"));
            list.add(new MyDto9(32L, "lee", "ki", "football", "010"));
            list.add(new MyDto9(33L, "kim", "ds", "ski", "010"));
            list.add(new MyDto9(34L, "kim", "yk", "volleyball", "010"));
            list.add(new MyDto9(35L, "kim", "yn", "figure", "010"));
            model.addAttribute("sports", list);
        }
    }



}
