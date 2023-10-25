package com.example.spring20230920.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequiredArgsConstructor
@RequestMapping("main39")
public class Controller39 {

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
    }
}
