package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.*;

@Controller
@RequestMapping("main18")
public class Controller18 {
    @GetMapping("sub1")
    public void method1(Model model) throws Exception {

        String url = "jdbc:mariadb://localhost:3306/w3schools";
        String username = "root";
        String password = "1234";

        String sql = """
                SELECT customerName
                FROM customers
                WHERE customerID = 1;
                """;

        Connection connection = DriverManager.getConnection(url, username, password);
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql); //brings the query result

        try (connection; statement) {
            try(resultSet) {
                resultSet.next();
                String name = resultSet.getString(1);
                model.addAttribute("customerName", name);
            }
        }


    }
}
