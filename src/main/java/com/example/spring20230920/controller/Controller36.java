package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao7;
import com.example.spring20230920.domain.MyDto39;
import com.example.spring20230920.domain.MyDto40;
import com.example.spring20230920.domain.MyDto41;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.LocalDate;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("main36")
public class Controller36 {

    private final MyDao7 dao;

    @GetMapping("sub1")
    public void method1() {

    }

    @GetMapping("sub2")
    public void method2(Integer id, Model model) {
        Map<String, Object> customerList = dao.selectByCustomerId(id);
        System.out.println("customerList = " + customerList);
    }

    @GetMapping("sub3")
    public void method3(Integer id) {
        Map<String, Object> data = dao.selectByEmployeeId(id);
        System.out.println("data = " + data);
    }

    @PostMapping("sub4")
    public void method4(String lastName,
                        String firstName,
                        LocalDate birthDate) {
        int i = dao.insertEmployee(lastName, firstName, birthDate);
        System.out.println(i + " rows has been inserted");
    }

//    axios.post("/main36/sub5", {
//        name: "ramen",
//                price: 150.00,
//                category: 3
//    }, {
//        headers: {
//            "content-type": "application/x-www-form-urlencoded"
//        }
//    })

    @PostMapping("sub5")
    public void method5(String name,
                        Double price,
                        Integer category) {
        int r = dao.insertProduct(name, price, category);
        System.out.println(r + " rows has been added");
    }

//    axios.delete("/main36/sub6")
//    @RequestMapping(method= RequestMethod.DELETE, value="sub6")
    @DeleteMapping("sub6")
    public void method6() {
        System.out.println("Controller36.method6");
    }

//    axios.delete("/main36/sub7")
    @DeleteMapping("sub7")
    public void method7() {
        System.out.println("Controller36.method7");
    }

//    axios.delete("/main36/sub8?name=son")
    @DeleteMapping("sub8")
    public void method8(String name) {
        System.out.println("name = " + name);
    }

    //Path variable: data that included in path
    //must be identical in mapping & parameter
    @DeleteMapping("sub9/{name}")
    public void method9(@PathVariable("name") String n) {
        System.out.println("n = " + n);
    }

    @DeleteMapping("sub10/{id}")
    public void method10(@PathVariable("id") Integer i) {
        System.out.println("i = " + i);
    }

    @DeleteMapping("sub11/{pid}")
    public void method11(@PathVariable("pid") Integer pid) {
        int c = dao.deleteByProductId(pid);
        System.out.println(c + " rows has been deleted");
    }

    @DeleteMapping("sub12/{cid}")
    public void method12(@PathVariable("cid") Integer cid) {
        int d = dao.deleteByCustomerId(cid);
        System.out.println(d + " rows has been deleted");
    }
//    @RequestMapping(method = RequestMethod.PUT, value="sub13")
    @PutMapping("sub13")
    public void method13() {
        System.out.println("Controller36.method13");
    }

//    @PutMapping("sub14/{name}/{country}")
//    public void method14(@PathVariable("name") String name, @PathVariable("country") String country) {
//        System.out.println("Controller36.method14");
//    }

    @PutMapping("sub14")
    public void method14(String name, String country) {
        System.out.println("name = " + name);
        System.out.println("country = " + country);
    }

    @PutMapping("sub15")
    public void method15(MyDto39 dto) {
        System.out.println("city = " + dto.getCity());
        System.out.println("age = " + dto.getAge());
        System.out.println("score = " + dto.getScore());
    }

    @PutMapping("sub16")
    public void method16(MyDto40 dto) {
        int rows = dao.updateProduct(dto);
        System.out.println(rows + " rows has been updated");
    }

    @PutMapping("sub17")
    public void method17(MyDto41 dto) {
        int rows = dao.updateEmployeebyId(dto);
        System.out.println(rows + " rows has been updated");
    }
}
