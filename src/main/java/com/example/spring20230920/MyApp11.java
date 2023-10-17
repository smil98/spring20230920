package com.example.spring20230920;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class MyApp11 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp11.class, args);
    }
}

interface MyInterface2 {
    public void method2();
}

class MyClass21 implements MyInterface2 {
    @Override
    public void method2() {

    }
}

@Component
class MyClass22 implements MyInterface2 {
    @Override
    public void method2() {

    }
}
@Component
@RequiredArgsConstructor
@Getter
class MyClass20 {
    private final MyInterface2 field;
    //if dependency is interface, we can extend code by creating new class that implements
    //existing interfaces thereby adding new features without modifying existing code
    public void method20() {
        field.method2();
    }
}
