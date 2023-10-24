package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao7;
import com.example.spring20230920.domain.MyDto41;
import com.example.spring20230920.domain.MyDto42;
import com.example.spring20230920.domain.MyDto43;
import com.example.spring20230920.domain.MyDto44;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("main37")
public class Controller37 {

    private final MyDao7 dao;

    /*
    axios.post("/main37/sub1", '{"name":"jones"}', {
        headers: {
            "content-type": "application/json"
        }
    })

    axios.post("/main37/sub1", {name: "jones"})
     */

    //since the method creating objects in javascript and json are the same, can omit significant chunks of request
    // js object -> json text : serialize
    // json text -> js object : parse (done by @RequestBody)
    @PostMapping("sub1")
    public void method1(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }

    /*
    axios.post("/main37/sub2", {name: "lee", age:33, score: 8.9})
     */
    /*
    js object
    {name: "lee", age:33, score: 8.9}
    -> serialize
    json text
    '{"name": "lee", "age":33, "score": 8.9}'
    -> parsing
    java map
    {name="lee", age=33, score=8.9}
     */
    @PostMapping("sub2")
    public void method3(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }

    /*
        axios.post("/main37/sub4", {
            city: "paris",
            age: 30,
            married: true,
            car: null,
            home: {
                address: "seoul",
                price: 1000
            },
            foods: [
                "pizza",
                "burger",
                "rice cake"
            ]
        })
     */
    @PostMapping("sub4")
    public void method4(@RequestBody MyDto42 dto) {
        System.out.println("dto = " + dto);
    }

    /*
        axios.post("/main37/sub5", {
            country: "Korea",
            score: 80.23,
            skills: [
                "run",
                "hike",
                "swim"
            ],
            phone: "010-2222-3333"
        })
     */
    @PostMapping("sub5")
    public void method5(@RequestBody MyDto43 dto) {
        System.out.println("dto.getCountry() = " + dto.getCountry());
        System.out.println("dto.getScore() = " + dto.getScore());
        System.out.println("dto.getSkills() = " + dto.getSkills());
        System.out.println("dto.getPhone() = " + dto.getPhone());
    }

    @PostMapping("sub6")
    public void method6(@RequestBody MyDto44 dto) {
        System.out.println("dto = " + dto);
    }

    @PostMapping("sub7")
    public void method7(@RequestBody MyDto41 dto) {
        int i = dao.updateEmployeebyId(dto);
        System.out.println(dto.getId() + " employee's info has been updated");
    }
}
