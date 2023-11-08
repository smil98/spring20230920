package com.example.spring20230920.dao;

import com.example.spring20230920.domain.MyDto34;
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

    @Select("""
    SELECT * FROM customers
    WHERE customerId = 5
    """)
    MyDto34 getCustomer();

    @Select("""
    SELECT *
    FROM customers
    WHERE customerId = #{id}
    """)
    MyDto34 selectCustomerById(Integer id);

    @Select("""
    SELECT customerId
    FROM customers
    """)
    Integer[] selectTotalRecord();

    @Select("""
    SELECT employeeId
    FROM employees
    """)
    Integer[] selectTotalEmployee();

    @Select("""
    SELECT CONCAT(FirstName, ' ', LastName) employeeName
    FROM employees
    WHERE employeeId = #{id}
    """)
    String selectEmployeeById(Integer id);
}
