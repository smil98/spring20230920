package com.example.spring20230920.dao;

import com.example.spring20230920.domain.MyDto39;
import com.example.spring20230920.domain.MyDto40;
import com.example.spring20230920.domain.MyDto41;
import org.apache.ibatis.annotations.*;

import java.time.LocalDate;
import java.util.Map;

@Mapper
public interface MyDao7 {

    @Select("""
    SELECT *
    FROM customers
    WHERE customerId = #{id}
    """)
    Map<String, Object> selectByCustomerId(Integer id);

    @Select("""
    SELECT *
    FROM employees
    WHERE employeeId = #{id}
    """)
    Map<String, Object> selectByEmployeeId(Integer id);

    @Insert("""
            INSERT INTO employees (lastName, firstName, birthDate)
            VALUES (#{lastName}, #{firstName}, #{birthDate})
            """)
    int insertEmployee(String lastName, String firstName, LocalDate birthDate);

    @Insert("""
    INSERT INTO products (ProductName, Price, CategoryID)
    VALUES (#{name}, #{price}, #{category})
    """)
    int insertProduct(String name, Double price, Integer category);

    @Delete("""
    DELETE FROM products
    WHERE productId = #{pid}
    """)
    int deleteByProductId(Integer pid);

    @Delete("""
    DELETE FROM customers
    WHERE customerID = #{cid}
    """)
    int deleteByCustomerId(Integer cid);

    @Update("""
    UPDATE products
    SET price = #{price},
        categoryId = #{category},
        productName = #{name}
    WHERE
        productId = #{id}
    """)
    int updateProduct(MyDto40 dto);

    @Update("""
    UPDATE employees
    SET LastName = #{lastName},
        FirstName = #{firstName},
        BirthDate = #{birthDate}
    WHERE employeeId = #{id}
    """)
    int updateEmployeebyId(MyDto41 dto);
}
