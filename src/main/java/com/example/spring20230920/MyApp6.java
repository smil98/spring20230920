package com.example.spring20230920;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class MyApp6 {
    public static void main(String[] args) {
        //Inversion of Control (IOC)
        ApplicationContext context = SpringApplication.run(MyApp6.class, args);

        MyClass9 myClass9 = context.getBean("myClass9", MyClass9.class);
        myClass9.method9(); //NullPointerException if @Autowired is not present
        //thus autowired automatically finds the appropriate bean to set method
        //and injects the value necessary to fields that has dependency = dependency injection (DI)

        System.out.println("myClass9.getField1() = " + myClass9.getField1());

        MyClass10 myClass10 = context.getBean("myClass10", MyClass10.class);
        System.out.println("myClass10 = " + myClass10);
    }
}

@Component
class MyClass10 {
    public void method10() {
        System.out.println("MyClass10.method10");
    }
}
@Component
class MyClass9 {

    private MyClass10 field1; //dependency

    public MyClass9() {
    }

    public MyClass9(MyClass10 field1) {
        this.field1 = field1;
    }

    @Autowired //method injection
    public void setField1(MyClass10 field1) {
        this.field1 = field1;
    }

    public MyClass10 getField1() {
        return field1;
    }

    public void method9() {
        field1.method10();
    }
}