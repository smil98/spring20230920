package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao4;
import com.example.spring20230920.domain.MyDto25;
import com.example.spring20230920.domain.MyDto26;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("main30")
public class Controller30 {
    private final MyDao4 dao;

    @GetMapping("sub1")
    public void method1(Integer id) {
        String name = dao.selectName(id);
        System.out.println("name = " + name);
    }

    @GetMapping("sub2")
    public void method2(Double from, Double to) {
        List<String> names = dao.select2(from, to);
        names.forEach(System.out::println);
    }

    @GetMapping("sub3")
    public void method3(LocalDate from, LocalDate to) {
         List<String> list = dao.select3(from, to);
         list.forEach(System.out::println);
    }

    @GetMapping("sub4")
    public void method4(MyDto25 dto) {
        List<String> list = dao.select4(dto);
        System.out.println("list = " + list.size());
        list.forEach(System.out::println);
    }

    @GetMapping("sub5")
    public void method5(MyDto26 dto) {
        List<String> list = dao.select5(dto);
        list.forEach(System.out::println);
    }
}