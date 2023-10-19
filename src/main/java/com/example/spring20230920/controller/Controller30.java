package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao4;
import com.example.spring20230920.domain.*;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.annotations.Delete;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

    @GetMapping("sub6")
    public void method6(MyDto27 dto1, MyDto28 dto2) {
        Integer num = dao.select6(dto1, dto2);
        System.out.println("num = " + num);
    }

    @GetMapping("sub7")
    public void method7(MyDto29 dto1, MyDto30 dto2) {
        dto2.setKeyword("%" + dto2.getKeyword() + "%");
        dto1.setFrom((dto1.getPage()-1)*dto1.getRows());
        List<String> names = dao.select7(dto1, dto2);
        names.forEach(System.out::println);
    }

    @GetMapping("sub8")
    public void method8(MyDto31 dto) {
        int rows = dao.insert1(dto);
        System.out.println(rows + " rows has been inserted");
    }

    @GetMapping("sub9")
    public void method9() {
    }

    @PostMapping("sub10")
    public void method10(MyDto32 dto) {
        int row = dao.insert2(dto);
        System.out.println(row + " rows has been inserted");
    }

    @GetMapping("sub11")
    public void method11(Integer id) {
        int rows = dao.delete1(id);
        System.out.println(rows + " row(s) has been deleted");
    }

    @GetMapping("sub12")
    public void method12() {
        int rows = dao.delete2();
        System.out.println(rows + " row(s) has been deleted");
    }

    @GetMapping("sub13")
    public void method13(Integer employeeId, Model model) {
        MyDto33 employee = dao.select8(employeeId);
        model.addAttribute("employee", employee);
    }

    @PostMapping("sub14")
    public String method14(MyDto33 employee, RedirectAttributes rttr) {
        int rows = dao.update1(employee);
        System.out.println(rows);

        if (rows == 1) {
            rttr.addFlashAttribute("message", "Update done sucessfully");
        } else {
            rttr.addFlashAttribute("message", "Oops! Something has gone wrong!");
        }

        rttr.addAttribute("employeeId", employee.getEmployeeId());

        return "redirect:/main30/sub13";
    }

    @GetMapping("sub15")
    public void method15(Integer customerId, Model model) {
        MyDto34 customer = dao.select9(customerId);
        model.addAttribute("customer", customer);
    }

    @PostMapping("sub16")
    public String method16(MyDto34 customer, RedirectAttributes rttr) {
        int rows = dao.update2(customer);

        if(rows == 1) {
            rttr.addFlashAttribute("message", "Update done sucessfully");
        } else {
            rttr.addFlashAttribute("message", "Oops! Something has gone wrong!");
        }
        rttr.addAttribute("customerId", customer.getCustomerId());
        return "redirect:/main30/sub15";
    }
}
