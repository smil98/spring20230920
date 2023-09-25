package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto10;
import com.example.spring20230920.domain.MyDto9;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
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

    @RequestMapping("sub4")
    public void method4(Model model) {
        model.addAttribute("myList", List.of("testla", "kia", "benz"));
        model.addAttribute("foodList", List.of("dumpling", "apple", "bread", "hash-brown"));
    }
    @RequestMapping("sub5")
    public void method5(Model model) {
        model.addAttribute("foodList", List.of("dumpling", "apple", "bread", "hash-brown"));
        model.addAttribute("names", List.of("doosik", "bongseok","heesu", "mihyeon"));
    }

    @RequestMapping("sub6")
    public void method6(Model model) {
        List<MyDto9> list = new ArrayList<>();
        list.add(new MyDto9(31L, "son", "hm", "football", "010"));
        list.add(new MyDto9(32L, "lee", "ki", "football", "010"));
        list.add(new MyDto9(33L, "kim", "ds", "ski", "010"));
        list.add(new MyDto9(34L, "kim", "yk", "volleyball", "010"));
        list.add(new MyDto9(35L, "kim", "yn", "figure", "010"));
        model.addAttribute("sports", list);
    }

    @RequestMapping("sub7")
    public void method7(Model model) {
        model.addAttribute("a", 3);
        model.addAttribute("b", 5);
        model.addAttribute("c", "8");
        model.addAttribute("d", "9");
    }

    @RequestMapping("sub8")
    public void method8(Model model) {
        model.addAttribute("a", 3);
        model.addAttribute("b", 5);
        model.addAttribute("c", "java");
        model.addAttribute("d", "spring");
        model.addAttribute("e", "11");
        model.addAttribute("f", "2");
        model.addAttribute("g", 2);
    }

    @RequestMapping("sub9")
    public void method9(Model model) {
        model.addAttribute("a", "java");
        model.addAttribute("b", "");
        model.addAttribute("c", List.of(3,4));
        model.addAttribute("d", List.of());
        model.addAttribute("e", Map.of("name", "son"));
        model.addAttribute("f", Map.of());
    }
}
