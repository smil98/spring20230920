package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto15;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main20")
public class Controller20 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1() {
    }

    @GetMapping("sub2")
    public String method2(String id, Model model) throws SQLException {
        String sql = """
                SELECT CustomerID, CustomerName, Address, Country
                FROM customers
                WHERE CustomerID = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, id);
        ResultSet resultSet = statement.executeQuery();
        List<MyDto15> list = new ArrayList<>();

        try(connection; statement; resultSet) {
            while(resultSet.next()) {
                MyDto15 dto = new MyDto15();
                dto.setId(resultSet.getInt(1));
                dto.setName(resultSet.getString(2));
                dto.setAddress(resultSet.getString(3));
                dto.setCountry(resultSet.getString(4));

                list.add(dto);
            }
        }
        model.addAttribute("customerList", list);

        return "/main19/sub6";
    }

    @GetMapping("sub3")
    public String method3(Model model) throws SQLException {
        String sql = """
                SELECT CustomerID, CustomerName, Address, Country
                FROM customers
                WHERE CustomerID = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, 1); //can change by input type
        ResultSet resultSet = statement.executeQuery();
        List<MyDto15> list = new ArrayList<>();

        try(connection; statement; resultSet) {
            while(resultSet.next()) {
                MyDto15 dto = new MyDto15();
                dto.setId(resultSet.getInt(1));
                dto.setName(resultSet.getString(2));
                dto.setAddress(resultSet.getString(3));
                dto.setCountry(resultSet.getString(4));

                list.add(dto);
            }
        }

        model.addAttribute("customerList", list);

        return "/main19/sub6";
    }
    
    @GetMapping("sub4")
    public void method4(Integer pid) throws SQLException {
        String sql = """
                SELECT productId, productName
                FROM products
                WHERE productId = ?
                """;

        Connection connection =  dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, pid);
        ResultSet resultSet = statement.executeQuery();

        try(connection; statement; resultSet) {
            while(resultSet.next()) {
                System.out.println();
                System.out.println("Product Info:");
                System.out.println("Product No = " + resultSet.getInt(1));
                System.out.println("ProductName = " + resultSet.getString(2));
            }
        }
    }

    @GetMapping("sub5")
    public void method5(String country) throws SQLException {
        String sql = """
                SELECT contactName
                FROM customers
                WHERE country = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, country);
        ResultSet resultSet = statement.executeQuery();

        try(connection; statement; resultSet) {
            System.out.println();
            System.out.println("Customers Living in " + country + ":");
            System.out.println();
            while(resultSet.next()) {
                System.out.println(resultSet.getString(1));
            }
        }
    }
}
