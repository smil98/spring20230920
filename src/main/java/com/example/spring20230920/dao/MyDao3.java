package com.example.spring20230920.dao;

import com.example.spring20230920.domain.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

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

    @Select("""
    SELECT CustomerID, CustomerName, Address
    FROM customers
    WHERE CustomerID = #{id}
    """)
    Map<String, Object> select8(Integer id);

    @Select("""
    SELECT ProductName 'Product Name', price 'Price', CategoryName 'Product Category'
    FROM products NATURAL JOIN categories
    WHERE ProductID = #{id}
    """)
    Map<String, Object> select9(Integer id);

    @Select("""
    SELECT EmployeeID, LastName, FirstName
    FROM employees
    WHERE EmployeeID = 1;
    """)
    MyDto19 select10();

    //give alias to category if doesn't match
    @Select("""
    SELECT ProductName name, Price, CategoryName category
    FROM products NATURAL JOIN categories
    WHERE ProductID = 1;
    """)
    MyDto20 select11();

    @Select("""
    SELECT CustomerID id, CustomerName name, Country
    FROM customers
    WHERE CustomerID = 2;
    """)
    MyDto21 select12();

    @Select("""
            SELECT ProductID id,
                   ProductName name,
                   price
            FROM products
            WHERE CategoryID = 2
            ORDER BY Price
            """)
    List<Map<String, Object>> select13();

    @Select("""
    SELECT ProductName, Quantity, Price
    FROM products p JOIN orderdetails od ON p.ProductID = od.ProductID
    JOIN orders o ON o.OrderID = od.OrderID
    WHERE OrderDate = '1996-07-04'
    """)
    List<Map<String, Object>> select14();

    @Select("""
    SELECT ProductName name, Quantity, Price
    FROM products p JOIN orderdetails od ON p.ProductID = od.ProductID
    JOIN orders o ON o.OrderID = od.OrderID
    WHERE OrderDate = '1996-07-04'
    """)
    List<MyDto22> select15();

    @Select("""
    SELECT OrderDate, ProductName, CategoryName, Quantity, Price
    FROM products p JOIN categories c ON p.CategoryID = c.CategoryID
        JOIN orderdetails od ON p.ProductID = od.ProductID
        JOIN orders o ON o.OrderID = od.OrderID
    WHERE c.CategoryID = 1
    ORDER BY OrderDate, ProductName
    """)
    List<MyDto23> select16();

    @Select("""
    SELECT CustomerName 
    FROM customers
    WHERE CustomerID = 100
    """)
    String select17();

    @Select("""
    SELECT CustomerID
    FROM customers
    WHERE CustomerID = 100
    """)
    Integer select18();

    @Select("""
    SELECT CustomerID id,
            CustomerName name,
            Country
    FROM customers
    WHERE CustomerID = 1
    """)
    MyDto24 select19();
    //if record doesn't exist use reference type or IFNULL
    //primitive type cannot be null

    @Select("""
    SELECT  CustomerID id,
            CustomerName name,
            Country
    FROM customers
    WHERE CustomerID > 1
    """)
    MyDto24 select20();
}
