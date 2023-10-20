package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao6;
import com.example.spring20230920.domain.MyDto37;
import com.example.spring20230920.domain.MyDto38;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.example.spring20230920.service.MyService1;

@Controller
@RequiredArgsConstructor
@RequestMapping("main32")
public class Controller32 {
    private final MyDao6 dao;
    private final MyService1 component1;

    @GetMapping("sub1")
    public void method1(MyDto37 dto) {
        dao.insert1(dto);
        System.out.println("dto = " + dto);
    }

    @GetMapping("sub2")
    public void method2(MyDto38 dto) {
        dao.insert2(dto);
        System.out.println(dto.getPk() + ": " + dto.getLastName());
    }

    @GetMapping("sub3")
    public void method3() {

    }

    @PostMapping("sub4")
    public String method4(MyDto38 dto, RedirectAttributes rttr) {
        dao.insert3(dto);

        rttr.addFlashAttribute("message",
                "No."+ dto.getPk() + " has been added");

        return "redirect:/main32/sub3";
    }

    @GetMapping("sub5")
    public void method5() {
        try {
            component1.tx1();
        } finally {
            System.out.println("dao.select3() = " + dao.select3());
        }
    }
}
