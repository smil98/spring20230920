package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto11;
import com.example.spring20230920.domain.MyDto12;
import com.example.spring20230920.domain.MyDto13;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("main13")
public class Controller13 {
    @RequestMapping({"sub1", "sub2",
            "sub4", "sub7",
            "sub9", "sub11",
            "sub13"})
    public void method1() {}

    @RequestMapping("sub3")
    public void method2( String param1,
                         Integer param2,
                         String param3,
                         LocalDate param4,
                         LocalDateTime param5,
                         @RequestParam(value="param6", defaultValue = "accept") String param6,
                         String param7[],
                         @RequestParam("param7") List<String> param8
                       ) {
        System.out.println("param1 = " + param1);
        System.out.println("param2 = " + param2);
        System.out.println("param3 = " + param3);
        System.out.println("param4 = " + param4);
        System.out.println("param5 = " + param5);
        System.out.println("param6 = " + param6);

        if(param7 != null) {
            Arrays.stream(param7).forEach(System.out::println);
        }

        param8.forEach(System.out::println);
    }

    @RequestMapping("sub5")
    public void method4(String userId,
                        String userEmail,
                        LocalDate birthDate,
                        @RequestParam("hobby") List<String> hobby) {
        System.out.println("userId = " + userId);
        System.out.println("userEmail = " + userEmail);
        System.out.println("birthDate = " + birthDate);
        if(hobby != null) {
            hobby.forEach(System.out::println);
        }
    }

    @RequestMapping("sub6")
    public void method5(MyDto11 user) {
        System.out.println("user = " + user);
    }

    @RequestMapping("sub8")
    public void method7(MyDto12 info) {
        System.out.println("info = " + info);
    }

//    if requestparam is written the property becomes mandatory
    @RequestMapping("sub10")
    public void method10(String title,
                         String contentBody) {
        System.out.println("title = " + title);
        System.out.println("contentBody = " + contentBody);
    }

    @RequestMapping("sub12")
    public void method12(MyDto13 vo) {
        System.out.println("vo = " + vo);
    }

    @RequestMapping("sub14")
    public void method14(String hobby,
                         List<String> food) {
        System.out.println("hobby = " + hobby);
        if(food != null) {
            System.out.println("-----food-----");
            food.forEach(System.out::println);
        }

    }
}
