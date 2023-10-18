package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao3;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("main29")
public class Controller29 {
    private final MyDao3 dao3;

    @GetMapping("sub1")
    public void method1(Integer id) {
        String name = dao3.select1(id);
        System.out.println("name = " + name);
    }

    @GetMapping("sub2")
    public void method2(Integer id) {
        Double price = dao3.select2(id);
        System.out.println("price of product " + id + " = " + price);
    }

    @GetMapping("sub3")
    public void method3(Integer id) {
        String lastName = dao3.select3(id);
        System.out.println("lastName of Employee " + id + " = " + lastName);
    }

    @GetMapping("sub4")
    public void method4(Integer id) {
        LocalDate birthday = dao3.select4(id);
        System.out.println("birthday of Employee " + id + " = " + birthday);
    }

    @GetMapping("sub5")
    public void method5() {
        List<String> countries = dao3.select5();
        countries.forEach(System.out::println);
    }

    @GetMapping("sub6")
    public void method6() {
        List<LocalDate> birthdays = dao3.select6();
        birthdays.forEach(System.out::println);
    }

    @GetMapping("sub7")
    public void method7() {
        List<Double> priceList = dao3.select7();
        priceList.forEach(System.out::println);
    }
}
