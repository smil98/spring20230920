package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao3;
import com.example.spring20230920.domain.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("main29")
public class Controller29 {
    private final MyDao3 dao3;

    @GetMapping("sub1")
    public void method1(Integer id) {
        String name = dao3.select1(id);
        System.out.println("name = " + name);
    }

    @GetMapping("sub2")
    public void method2(Integer id) {
        Double price = dao3.select2(id);
        System.out.println("price of product " + id + " = " + price);
    }

    @GetMapping("sub3")
    public void method3(Integer id) {
        String lastName = dao3.select3(id);
        System.out.println("lastName of Employee " + id + " = " + lastName);
    }

    @GetMapping("sub4")
    public void method4(Integer id) {
        LocalDate birthday = dao3.select4(id);
        System.out.println("birthday of Employee " + id + " = " + birthday);
    }

    @GetMapping("sub5")
    public void method5() {
        List<String> countries = dao3.select5();
        countries.forEach(System.out::println);
    }

    @GetMapping("sub6")
    public void method6() {
        List<LocalDate> birthdays = dao3.select6();
        birthdays.forEach(System.out::println);
    }

    @GetMapping("sub7")
    public void method7() {
        List<Double> priceList = dao3.select7();
        priceList.forEach(System.out::println);
    }

    @GetMapping("sub8")
    public void method8(Integer id) {
        Map<String, Object> customers = dao3.select8(id);
        System.out.println("customers = " + customers);
        //map is unordered collection
    }

    @GetMapping("sub9")
    public void method9(Integer id) {
        Map<String, Object> products = dao3.select9(id);
        products.entrySet().forEach(System.out::println);
    }

    @GetMapping("sub10")
    public void method10() {
        MyDto19 dto = dao3.select10();
        System.out.println("dto = " + dto);
    }

    @GetMapping("sub11")
    public void method11() {
        MyDto20 dto = dao3.select11();
        System.out.println("dto = " + dto);
    }

    @GetMapping("sub12")
    public void method12() {
        MyDto21 dto = dao3.select12();
        System.out.println("dto = " + dto);
    }

    @GetMapping("sub13")
    public void method13() {
        List<Map<String, Object>> rows = dao3.select13();

        for (Map<String, Object> row : rows) {
            System.out.println("row = " + row);
        }
    }

    @GetMapping("sub14")
    public void method14() {
        List<Map<String, Object>> rows = dao3.select14();
//        for(Map<String, Object> row : rows) {
//            System.out.println("row = " + row);
//        }
        rows.forEach(System.out::println);
    }

    @GetMapping("sub15")
    public void method15() {
        List<MyDto22> list = dao3.select15();
        list.forEach(System.out::println);
    }

    @GetMapping("sub16")
    public void method16() {
        List<MyDto23> list = dao3.select16();
        list.forEach(System.out::println);
    }

    @GetMapping("sub17")
    public void method17() {
        String s = dao3.select17();
        //returns null as there is no record
        System.out.println("s = " + s);
        //thereby determining whether return value is null or not can be applied
    }

    @GetMapping("sub18")
    public void method18() {
        Integer s = dao3.select18();
        System.out.println("s = " + s);
    }

    @GetMapping("sub19")
    public void method19() {
        MyDto24 dto = dao3.select19();
        System.out.println("dto = " + dto);
    }

    @GetMapping("sub20")
    public void method20() {
        MyDto24 dto = dao3.select20(); //TooManyResultsException
    }
}
