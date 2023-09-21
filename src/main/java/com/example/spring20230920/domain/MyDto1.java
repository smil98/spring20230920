package com.example.spring20230920.domain;

public class MyDto1 {
    private String name;
    private String homeAddress;
    private String MYHOME;
    private Boolean married;
    private boolean checked;

    //name, homeAddress property
    //property name : auto rip off get/set and turns first letter to lowercase
    //but last case would remain
    //if type is boolean,can switch btw is/get for getter



    public boolean isChecked() {
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }

    public Boolean getMarried() {
        return married;
    }

    public void setMarried(Boolean married) {
        this.married = married;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHomeAddress() {
        return homeAddress;
    }

    public void setHomeAddress(String homeAddress) {
        this.homeAddress = homeAddress;
    }

    public String getMYHOME() {
        return MYHOME;
    }

    public void setMYHOME(String MYHOME) {
        this.MYHOME = MYHOME;
    }
}
