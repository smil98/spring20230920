package com.example.spring20230920.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.Map;

@Mapper
public interface MyDao10 {
    @Select("""
    SELECT customerName
    FROM customers
    WHERE customerId = 5
    """)
    String selectCustomer();
}
