package com.example.spring20230920.domain;

import lombok.Data;
import org.apache.ibatis.annotations.Select;

@Data
public class MyDto22 {
    private String name;
    private Integer quantity;
    private Double price;
}
