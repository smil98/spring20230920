package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao8;
import com.example.spring20230920.domain.MyDto33;
import com.example.spring20230920.domain.MyDto45;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("main38")
public class Controller38 {

    private final MyDao8 dao;

    @GetMapping("sub0")
    public void method0() {

    }

    @GetMapping("sub1")
    @ResponseBody
    public String method1() {

        return "/main38/sub1";
        //this string will be the body of response
    }

    @GetMapping("sub2")
    @ResponseBody
    public String method2() {
        try{
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }

        return "Hello World!";
    }

    @GetMapping("sub3")
    @ResponseBody
    public Map<String, Object> method3() {
        return Map.of("name", "son", "age", 30);
    }

    @ResponseBody
    @GetMapping("sub4")
    public Map<String, Object> method4() {

        return Map.of("city", "seoul",
                "price", 3000,
                "list", List.of("son", "lee", "kim"),
                "birth", "1999-03-03");
    }

    @ResponseBody
    @GetMapping("sub5")
    public Map<String, Object> method5(Integer id) {
        return dao.selectProductById(id);
    }

    @ResponseBody
    @GetMapping("sub6")
    public MyDto33 method6(Integer id) {
        return dao.selectByEmployeeId(id);
    }

    @ResponseBody
    @GetMapping("sub7")
    public MyDto45 method7(Integer id) {
        return dao.selectProductInfo(id);
    }

}
