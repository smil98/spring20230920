package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao10;
import com.example.spring20230920.domain.MyDto34;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("api/main1")
public class RestController1 {

    private final MyDao10 dao;

    //http://localhost:8080/api/main1/sub1
    @ResponseBody
    @GetMapping("sub1")
    public String method1() {
        return "hello boot app";
    }

    @ResponseBody
    @GetMapping("sub2")
    public String method2() {
        String customerName = dao.selectCustomer();
        return customerName;
    }

    @ResponseBody
    @GetMapping("sub3")
    public MyDto34 method3() {
        return dao.getCustomer();
    }

    @ResponseBody
    @GetMapping("sub4")
    public MyDto34 method4(Integer id) {
        return dao.selectCustomerById(id);
    }
}
