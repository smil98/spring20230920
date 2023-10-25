package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao8;
import com.example.spring20230920.domain.MyDto33;
import com.example.spring20230920.domain.MyDto45;
import com.example.spring20230920.service.MyService2;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("main39")
public class Controller39 {

    private final MyDao8 dao;
    private final MyService2 service;

    @GetMapping("sub0")
    public void method0() {

    }

    @GetMapping("sub1")
    @ResponseBody // can omit if responseEntity is used
    public ResponseEntity method1() {
        // responseEntity : allows to write response code, response body
        return ResponseEntity.status(200).build();
    }

    @GetMapping("sub2")
    @ResponseBody
    public ResponseEntity method2() {
        return ResponseEntity.notFound().build();
//        return ResponseEntity.internalServerError().build();
    }

    @GetMapping("sub3")
    @ResponseBody
    public ResponseEntity method3() {
        return ResponseEntity.status(400).build();
    }

    @GetMapping("sub4")
    @ResponseBody
    public ResponseEntity<MyDto45> method7(Integer id) {
        MyDto45 data = dao.selectProductInfo(id);
//        return ResponseEntity.ok().body(data);
//        return ResponseEntity.status(200).body(data);
        if(data == null) {
            return ResponseEntity.notFound().build();
        } else {
            return ResponseEntity.ok(data);
        }
    }

    @GetMapping("sub5")
    @ResponseBody
    public ResponseEntity method5() {
        if(Math.random() > 0.5) {
            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.internalServerError().build();
        }
    }

    @PostMapping("sub6")
    public ResponseEntity method6(@RequestBody MyDto33 dto) {
        if(service.validate(dto)) {
            int rows = service.add(dto);
            if(rows == 1) {
                return ResponseEntity.ok().build();
            } else {
                return ResponseEntity.internalServerError().build();
            }
        } else {
            return ResponseEntity.badRequest().build();
        }
    }
}
