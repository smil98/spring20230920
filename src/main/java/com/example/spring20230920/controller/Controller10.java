package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto10;
import com.example.spring20230920.domain.MyDto9;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main10")
public class Controller10 {
    @RequestMapping("sub1")
    public void method1(Model model) {
        MyDto9 o1 = new MyDto9();
        MyDto9 o2 = new MyDto9();

        o1.setFirstName("son");
        o2.setFirstName("lee");

        model.addAttribute("students", List.of(o1,o2));

        MyDto9 o3 = new MyDto9();
        MyDto9 o4 = new MyDto9();
        MyDto9 o5 = new MyDto9();

        o3.setFirstName("choi");
        o4.setFirstName("park");
        o5.setFirstName("kim");

        model.addAttribute("studentList", List.of(o3,o4,o5));
    }

    @RequestMapping("sub2")
    public void method2(Model model) {
        MyDto9 o1 = new MyDto9();
        MyDto9 o2 = new MyDto9();

        o1.setLastName("두식");
        o2.setLastName("봉달");

        model.addAttribute("personMap", Map.of("person1", o1, "person2", o2));
        model.addAttribute("people", Map.of("1st", o1, "2nd", o2));
    }

    @RequestMapping("sub3")
    public void method3(Model model) {
        MyDto10 o1 = new MyDto10();
        o1.setName("doosik");
        o1.setId(3);
        o1.setFoods(List.of("pizza", "burger", "milk"));
        o1.setCars(List.of("truck", "bmw", "kia"));

        model.addAttribute("person1", o1);
    }
}
