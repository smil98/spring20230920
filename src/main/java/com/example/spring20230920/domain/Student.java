package com.example.spring20230920.domain;

public class Student {
    //email, infor"mation" property
    //thus method name matters
    //email property -> only write available
    private String email;
    private String info;

//    public String getEmail() {
//        return email;
//    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getInformation() {
        return info;
    }

    public void setInformation(String info) {
        this.info = info;
    }

    @Override
    public String toString() {
        return "Student{" +
                "email='" + email + '\'' +
                ", info='" + info + '\'' +
                '}';
    }
}
