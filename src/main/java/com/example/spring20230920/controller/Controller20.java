package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto15;
import com.example.spring20230920.domain.MyDto16;
import com.example.spring20230920.domain.Suppliers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

    @GetMapping("sub6")
    public void method6(String c1, String c2) throws SQLException {
        String sql = """
                SELECT customerName, country
                FROM customers
                WHERE country = ? OR country = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        statement.setString(1, c1);
        statement.setString(2, c2);

        ResultSet resultSet = statement.executeQuery();

        try (connection; statement; resultSet) {
            System.out.println();
            System.out.println("Customer List");
            while (resultSet.next()) {
                String country = resultSet.getString(2);
                String name = resultSet.getString(1);
                System.out.println(country + ":" + name);
            }
        }
    }

    @GetMapping("sub7")
    public void method7() {

    }

    @GetMapping("sub8")
    public String method8(Double min, Double max, Model model) throws SQLException {
        String sql = """
                SELECT productId, productName, unit, price FROM products
                WHERE Price >= ? AND Price <= ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setDouble(1, min);
        statement.setDouble(2, max);
        ResultSet resultSet = statement.executeQuery();

        List<MyDto16> list = new ArrayList<>();

        try (connection; statement; resultSet) {
            System.out.println();
            System.out.println("List of Products Between $" + min + " ~ $" + max);
            while(resultSet.next()) {
                MyDto16 dto = new MyDto16();
                dto.setPid(resultSet.getInt(1));
                dto.setProductName(resultSet.getString(2));
                dto.setUnit(resultSet.getString(3));
                dto.setPrice(resultSet.getDouble(4));

                list.add(dto);
            }
        }

        model.addAttribute("products", list);

        return "/main19/sub5";
    }

    @GetMapping("sub9")
    public void method9(@RequestParam("countryList") List<String> countryList) throws SQLException {
        String questionMarks = "";
        for(int i = 0; i < countryList.size(); i++) {
            if(i == (countryList.size()-1)) {
                questionMarks += "?";
            } else {
                questionMarks += "?, ";
            }
        }

        String sql = """
                SELECT * 
                FROM customers
                WHERE Country IN ("""
                +
                questionMarks
                +
                """
                )
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        for(int i = 0; i < countryList.size(); i++) {
            statement.setString(i+1, countryList.get(i));
        }
        ResultSet resultSet = statement.executeQuery();

        try(connection; statement; resultSet) {
            while(resultSet.next()) {
                String name = resultSet.getString("CustomerName");
                String country = resultSet.getString("Country");
                System.out.println( name + " : " + country);
            }
        }

    }

    @GetMapping("sub10")
    public void method10(Model model) throws SQLException {
        String sql = """
                SELECT DISTINCT country
                FROM suppliers
                """;
        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        List<String> list = new ArrayList<>();
        try(connection; statement; resultSet) {
            while(resultSet.next()) {
                list.add(resultSet.getString(1));
            }
        }
        model.addAttribute("countryList", list);
    }

    @GetMapping("sub11")
    public void method11(@RequestParam("country") List<String> countryList, Model model) throws SQLException {
        String questionMarks = "";
        for(int i = 0; i < countryList.size(); i++) {
            if(i == (countryList.size()-1)) {
                questionMarks += "?";
            } else {
                questionMarks += "?,";
            }
        }

        String sql = """
                SELECT *
                FROM suppliers
                WHERE Country IN ("""
                +
                questionMarks
                +
                """
                )""";

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        for(int i = 0; i < countryList.size(); i++) {
            statement.setString(i+1, countryList.get(i));
        }
        ResultSet resultSet = statement.executeQuery();

        List<Suppliers> list = new ArrayList<>();

        try(connection; statement; resultSet) {
            while(resultSet.next()) {
                Suppliers supplier = new Suppliers();
                supplier.setId(resultSet.getInt(1));
                supplier.setName(resultSet.getString(2));
                supplier.setContactName(resultSet.getString(3));
                supplier.setAddress(resultSet.getString(4));
                supplier.setCity(resultSet.getString(5));
                supplier.setPostalCode(resultSet.getString(6));
                supplier.setCountry(resultSet.getString(7));
                supplier.setPhone(resultSet.getString(8));
                list.add(supplier);
            }
        }

        model.addAttribute("countryList", countryList);
        model.addAttribute("supplierList", list);
    }
}
