package com.example.spring20230920.dao;

import com.example.spring20230920.domain.MyDto33;
import com.example.spring20230920.domain.MyDto45;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.Map;

@Mapper
public interface MyDao8 {

    @Select("""
    SELECT *
    FROM products
    WHERE productId = #{id}
    """)
    Map<String, Object> selectProductById(Integer id);

    @Select("""
    SELECT *
    FROM Employees
    WHERE EmployeeId = #{id}
    """)
    MyDto33 selectByEmployeeId(Integer id);

    @Select("""
    SELECT ProductId id, Price price, CategoryName category, unit
    FROM products NATURAL JOIN categories
    WHERE ProductId = #{id} 
    """)
    MyDto45 selectProductInfo(Integer id);
}
