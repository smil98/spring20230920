package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;

@Controller
@RequestMapping("main2")
public class Controller03 {
    //if /main2/sub1?address=seoul
    @RequestMapping("sub1")
    public void method1(WebRequest request) {
        System.out.println("Controller03.method1");
        String address = request.getParameter("address");
        System.out.println("address = " + address);
    }

    //http://localhost:8080/main2/sub2?name=jj&address=jeju
    @RequestMapping("sub2")
    public void method2(WebRequest request) {
        System.out.println("Controller03.method2");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        System.out.println("name = " + name);
        System.out.println("address = " + address);
    }

    @RequestMapping("sub3")
    public void method3(@RequestParam("name") String name) {
        System.out.println("name = " + name);
    }

    //order doesn't matter
    @RequestMapping("sub4")
    public void method4(@RequestParam("name") String name,
                        @RequestParam("address") String address) {
        System.out.println("name = " + name);
        System.out.println("address = " + address);
    }

    @RequestMapping("sub5")
    public void method5(@RequestParam("email") String email,
                        @RequestParam("gender") String gender,
                        @RequestParam("number") String number) {
        System.out.println("email = " + email);
        System.out.println("gender = " + gender);
        System.out.println("number = " + number);
    }

    @RequestMapping("sub6")
    public void method6(@RequestParam("name") String name,
                        @RequestParam("age") String age) {
        int modAge = Integer.valueOf(age);
        System.out.println("name = " + name);
        System.out.println("modAge = " + modAge);
    }

    //can auto convert if input is in Integer format
    @RequestMapping("sub7")
    public void method7(@RequestParam("name") String name,
                        @RequestParam("age") Integer age) {
        System.out.println("name = " + name);
        System.out.println("age = " + age);
    }

    @RequestMapping("sub8")
    public void method8(@RequestParam("address") String address,
                        @RequestParam("married") Boolean married,
                        @RequestParam("age") Integer age) {
        System.out.println("address = " + address);
        System.out.println("married = " + married);
        System.out.println("age = " + age);
    }

    //if value is not necessary
    @RequestMapping("sub9")
    public void method9(@RequestParam(value = "name", required=false) String name) {
        System.out.println("name = " + name);
    }

    @RequestMapping("sub10")
    public void method10(@RequestParam("address") String address,
                         @RequestParam(value="age", required = false) Integer age) {
        System.out.println("address = " + address);
        System.out.println("age = " + age);
    }
    @RequestMapping("sub11")
    public void method11(@RequestParam(value = "age", defaultValue = "0") Integer age) {
        System.out.println(age);
    }
}