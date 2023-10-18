package com.example.spring20230920.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.time.LocalDate;
import java.util.List;

@Mapper
public interface MyDao3 {

    @Select("""
    SELECT CustomerName
    FROM customers
    WHERE CustomerID = #{id}
    """)
    public String select1(Integer id);

    @Select("""
    SELECT Price FROM products
    WHERE ProductID = #{id}
    """)
    Double select2(Integer id);

    @Select("""
    SELECT LastName
    FROM employees
    WHERE EmployeeID = #{id}
    """)
    String select3(Integer id);

    @Select("""
        SELECT BirthDate
        FROM employees
        WHERE EmployeeID = #{id}
    """)
    LocalDate select4(Integer id);

    @Select("""
        SELECT DISTINCT Country FROM customers
        ORDER BY 1;
    """)
    List<String> select5();

    @Select("""
        SELECT BirthDate FROM employees
        ORDER BY 1;
    """)
    List<LocalDate> select6();

    @Select("""
        SELECT Price FROM products
        ORDER BY 1;
    """)
    List<Double> select7();
}
