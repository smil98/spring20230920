package com.example.spring20230920.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Controller
@RequestMapping("main23")
public class Controller23 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(String keyword) throws SQLException {
        String sql = """
                SELECT *
                FROM products
                WHERE productName LIKE ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, "%" + keyword + "%"); // don't have to put ''
        ResultSet resultSet = statement.executeQuery();

        try(connection; statement; resultSet) {
            System.out.println();
            System.out.println(keyword + "가 들어간 상품명들");
            while (resultSet.next()) {
                String name = resultSet.getString("productName");
                System.out.println("name = " + name);
            }
        }
    }

    @GetMapping("sub2")
    public void method2(String k, Model model) throws SQLException {
        String sql = """
                SELECT CustomerName
                FROM customers
                WHERE CustomerName LIKE ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, "%" + k + "%");
        ResultSet resultSet = statement.executeQuery();
        List<String> list = new ArrayList<>();

        try(connection; statement; resultSet) {
            while (resultSet.next()) {
                list.add(resultSet.getString(1));
            }
        }

        model.addAttribute("keyword", k);
        model.addAttribute("customers", list);
    }

    @GetMapping("sub3")
    public void method3(@RequestParam(value="st", defaultValue = "") String searchType,
                        @RequestParam(value = "k", defaultValue = "") String keyword,
                        Model model) throws SQLException {
        //can modify st by changing required to false
        String sql = """
                SELECT * 
                FROM customers
                WHERE """;

        if(searchType.equals("name1")) {
            sql += " customerName LIKE ?";
        } else if (searchType.equals("name2")) {
            sql += " contactName LIKE ?";
        }

        if(!searchType.isEmpty() && !keyword.isEmpty()) {
            Connection connection = dataSource.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + keyword + "%");
            ResultSet resultSet = statement.executeQuery();

            List<Map<String, Object>> list = new ArrayList<>();
            String name = "";
            try (connection; resultSet; statement) {
                while (resultSet.next()) {
                    String customerName = resultSet.getString("customerName");
                    String contactName = resultSet.getString("contactName");

                    list.add(Map.of("customerName", customerName, "contactName", contactName));
                }

                model.addAttribute("searchType", searchType);
                model.addAttribute("keyword", keyword);
                model.addAttribute("customers", list);
            }
        }
    }

    @GetMapping("sub4")
    public void method4(@RequestParam(value="t" , defaultValue = "") String option,
            @RequestParam(value = "k", defaultValue = "") String keyword,
                        Model model) throws SQLException {
        String sql = """
                SELECT CONCAT(LastName , ' ' , FirstName) AS fullName, Notes
                FROM employees
                WHERE""";

        if(option.equals("lname")) {
            sql += " LastName LIKE ?";
        } else if(option.equals("fname")) {
            sql += " FirstName LIKE ?";
        } else if(option.equals("note")) {
            sql += " Notes LIKE ?";
        } //can use switch

//        switch(option) {
//            case "lname":
//                sql += " LastName LIKE ?";
//                break;
//            case "fname":
//                sql += " FirstName LIKE ?";
//                break;
//            case "note":
//                sql += " Notes LIKE ?";
//                break;
//        }

        if(!option.isEmpty() && !keyword.isEmpty()) {
            Connection connection = dataSource.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + keyword + "%");
            ResultSet resultSet = statement.executeQuery();
            List<Map<String, Object>> list = new ArrayList<>();

            try(connection; statement; resultSet) {
                while(resultSet.next()) {
                    list.add(Map.of("fullName", resultSet.getString("fullName"),
                            "Notes",resultSet.getString("Notes")));
                }
            }
            model.addAttribute("employees", list);
            model.addAttribute("keyword", keyword);
            model.addAttribute("option", option);
        }

    }
}
