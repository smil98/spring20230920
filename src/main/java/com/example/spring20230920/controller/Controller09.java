package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto7;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;
import com.example.spring20230920.domain.MyDto8;
import com.example.spring20230920.domain.MyDto9;

@Controller
@RequestMapping("main9")
public class Controller09 {
    @RequestMapping("sub1")
    public void method1(Model model) {
        model.addAttribute("attr1", "choi");
        model.addAttribute("attr2", 300);
        model.addAttribute("attr3", true);
        model.addAttribute("attr4", 3.14);

        //if Model is an Array
        model.addAttribute("attr5", new String[]{"lee", "gu"});

        String[] myArr1 = {"korea", "seoul", "jeju"};
        model.addAttribute("youtArr6", myArr1);
    }

    @RequestMapping("sub2")
    public void method2(Model model) {
        model.addAttribute("myName", new String[]{"wooje", "minhyung"});
        model.addAttribute("yourEmail", new String[]{"ab@gmail.com", "cd@naver.com", "ef@daum.net"});
        model.addAttribute("herAddress", new String[]{"jeju"});
    }

    @RequestMapping("sub3")
    public void method3(Model model) {
        model.addAttribute("names", List.of("두식","봉석","희수"));
        model.addAttribute("list1", List.of("blah", "wam"));
        model.addAttribute("mapList1", List.of(11,22,33));
        model.addAttribute("cities", List.of("seoul", "newyork", "newMexico","california"));
    }

    @RequestMapping("sub4")
    public void method4(Model model) {
        var map1 = Map.of("son", 7,
                "lee", 19,
                "kim", 30);
        model.addAttribute("myMap", map1);

        var map2 = Map.of("seoul", 11,
                "busan", 123);
        model.addAttribute("cityMap", map2);
        var map3 = Map.of("red", "#ff0000",
                "blue", "#0000ff",
                "black", "000000");
        model.addAttribute("color", map3);

        var map4 = Map.of("name", "두식",
                "his name", "봉석",
                "your-name", "희수");
//        if the key includes white space or dash(recognized as negative sign),
//        cannot use .key annotation in jsp to get value, thus use ${MapName["key"]}
    }

    @RequestMapping("sub5")
    public void method5(Model model) {
        var map1 = Map.of("phone1", "iphone",
                "phone2", "galaxy");
        var map2 = Map.of("korea", "seoul",
                "us", "washington");
        var map3 = Map.of("1st", "hamburger",
                "2nd", "pizza");

        model.addAttribute("phones", map1);
        model.addAttribute("caps", map2);
        model.addAttribute("foods", map3);
    }

    @RequestMapping("sub6")
    public void method6(Model model) {
        model.addAttribute("attr1", new Object());
//        model.addAttribute("attr2", new Scanner(System.in));
        model.addAttribute("attr3", new MyDto7());
    }

    @RequestMapping("sub7")
    public void method7(Model model) {
        MyDto8 o1 = new MyDto8();
        o1.setFood("pizza");
        o1.setComputer("intel");
        o1.setBirthDate("2020-01-01");

        model.addAttribute("person1", o1);
    }

    @RequestMapping("sub8")
    public void method8(Model model) {
        MyDto9 o1 = new MyDto9();
        o1.setId(123243L);
        o1.setFirstName("gildong");
        o1.setLastName("hong");
        o1.setClassName("1-3");
        o1.setPhoneNumber("010-2004-0131");
        model.addAttribute("student", o1);
    }
}
