package com.example.spring20230920.dao;

import com.example.spring20230920.domain.*;
import org.apache.ibatis.annotations.*;

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

    //if there is more than one bean, then must identify which one
    @Select("""
            SELECT COUNT(OrderID)
            FROM orders
            WHERE OrderDate BETWEEN #{dto1.from} AND #{dto2.to}
            """)
    Integer select6(MyDto27 dto1, MyDto28 dto2);

    @Select("""
    SELECT CustomerName
    FROM customers
    WHERE CustomerName LIKE #{dto2.keyword}
    LIMIT #{dto1.from}, #{dto1.rows}
    """)
    List<String> select7(MyDto29 dto1, MyDto30 dto2);

    @Insert("""
    INSERT INTO customers(CustomerName, Country)
    VALUE (#{name}, #{country})
    """)
    Integer insert1(MyDto31 dto);
    //can set void then MyBatis will automatically return nothing

    @Insert("""
    INSERT INTO employees(LastName, FirstName)
    VALUE (#{lastName}, #{firstName})
    """)
    Integer insert2(MyDto32 dto);

    @Delete("""
    DELETE FROM customers
    WHERE CustomerID = #{id}
    """)
    int delete1(Integer id);

    @Delete("""
    DELETE FROM products
    WHERE ProductID = 3
    """)
    int delete2();

    @Select("""
    SELECT *
    FROM employees
    WHERE EmployeeID = #{employeeId}
    """)
    MyDto33 select8(Integer employeeId);


    @Update("""
    UPDATE employees
    SET LastName = #{lastName},
        FirstName = #{firstName},
        BirthDate = #{birthDate},
        Notes = #{notes},
        Photo = #{photo}
    WHERE EmployeeID = #{employeeId}
    """)
    int update1(MyDto33 employee);

    @Select("""
    SELECT *
    FROM customers
    WHERE CustomerID = #{customerId}
    """)
    MyDto34 select9(Integer customerId);

    @Update("""
    UPDATE customers
    SET CustomerName = #{customerName},
        ContactName = #{contactName},
        Address = #{address},
        City = #{city},
        PostalCode = #{postalCode},
        Country = #{country}
    WHERE CustomerID = #{customerId}
    """)
    int update2(MyDto34 customer);
}