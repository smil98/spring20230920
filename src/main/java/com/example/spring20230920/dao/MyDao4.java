package com.example.spring20230920.dao;

import com.example.spring20230920.domain.MyDto25;
import com.example.spring20230920.domain.MyDto26;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.time.LocalDate;
import java.util.List;

@Mapper
public interface MyDao4 {

    //if one parameter, then the name does not have to match
    @Select("""
    SELECT CustomerName
    FROM customers
    WHERE CustomerID = #{dfsdf}
    """)
    String selectName(Integer id);

    @Select("""
    SELECT ProductName
    FROM products
    WHERE Price BETWEEN #{from} AND #{to}
    """)
    List<String> select2(Double from, Double to);

    @Select("""
    SELECT DISTINCT ProductName
    FROM products p 
        JOIN orderdetails od ON p.ProductID = od.ProductID
        JOIN orders o ON o.OrderID = od.OrderID
    WHERE o.OrderDate BETWEEN #{from} AND #{to}
    ORDER BY 1;
    """)
    List<String> select3(LocalDate from, LocalDate to);

    @Select("""
    SELECT *
    FROM products
    WHERE Price BETWEEN #{min} AND #{max}
    """)
    List<String> select4(MyDto25 dto);

    @Select("""
    SELECT CustomerName
    From customers
    WHERE Country IN (#{country1}, #{country2})
    """)
    List<String> select5(MyDto26 dto);
}
