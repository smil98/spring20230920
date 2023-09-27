package com.example.spring20230920.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main15")
public class Controller15 {
    @GetMapping({"sub1"})
    public void method1() {

    }

    @GetMapping("sub2")
    public void method2(HttpServletRequest request, HttpSession session) {
        System.out.println();
        System.out.println("request = " + request.getRemoteHost());
        System.out.println("session = " + session.getId());
        System.out.println();
    }

    @GetMapping("sub3")
    public void method3(
            @RequestParam(value="name", defaultValue = "") String name,
            HttpSession session,
            HttpServletRequest request) {
        if(!name.isBlank()) {
            session.setAttribute("userName", name);
        }
        Object userName = session.getAttribute("userName");
        if(userName != null) {
            System.out.println("userName = " + userName);
            System.out.println("request = " + request.getRemoteHost());
        }
    }

    @GetMapping("sub4")
    public void method4() {

    }
    @PostMapping("sub5")
    public void method5(String name, HttpSession session) {
        session.setAttribute("username", name);
    }

    @GetMapping("sub6")
    public void method6() {

    }

    @GetMapping("sub7")
    public void method7() {

    }

    @PostMapping("sub8")
    public void method8(@RequestParam("foods") List<String> foods, HttpSession session) {
        session.setAttribute("foods", foods);
    }

    @GetMapping("sub9")
    public void method9() {

    }

    @GetMapping("sub10")
    public void method10(Model model, HttpSession session) {
        model.addAttribute("modelAttr1", "tanghuru");
        session.setAttribute("sessionAttr1", "maratang");
        model.addAttribute("attr1", "chicken");
        session.setAttribute("attr1", "coffee");
    }

}
