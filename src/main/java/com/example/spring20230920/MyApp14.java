package com.example.spring20230920;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
public class MyApp14 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp14.class, args);
        Object bean1 = context.getBean("myBean1");
        System.out.println("bean1 = " + bean1);

        Object bean2 = context.getBean("myBean2");
        System.out.println("bean2 = " + bean2);

        Configuration1 conf = context.getBean("configuration1", Configuration1.class);
        MyClass27 obj1 = conf.myBean1();
        MyClass27 obj2 = conf.myBean2();

        System.out.println("obj1 = " + obj1); //equivalent to bean1
        System.out.println("obj2 = " + obj2); //equivalent to bean2
    }
}

//Configuration bean: class that has method to create Spring beans
@Configuration
class Configuration1 {
    @Bean //bean making method
    public MyClass27 myBean1() {
        return new MyClass27();
    }

    @Bean
    public MyClass27 myBean2() {
        return new MyClass27();
    }
}

//@Component: lowerCamelCase
//@Bean: identical with method name
class MyClass27 {

}