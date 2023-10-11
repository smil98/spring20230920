package com.example.spring20230920.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main25")
public class Controller25 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(@RequestParam(value = "id", required = false) Integer customerId) throws SQLException {
        if(customerId == null) {
            System.out.println("Please enter id you want to delete");
            return;
        }

        String sql = """
                DELETE FROM customers
                WHERE customerId = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try(connection; statement) {
            statement.setInt(1,1);
            int count = statement.executeUpdate();
            if(count == 1) {
                System.out.println("Update sucessful");
            } else {
                System.out.println("Error. More than one or 0 rows has been affected");
            }
        }
    }

    @GetMapping("sub2")
    public void method2(Model model) {
        model.addAttribute("message", "Nothing done yet.");
    }
    @PostMapping("sub2")
    public void method2(@RequestParam(value= "pid", required = false) Integer productID, Model model) throws SQLException {
        if(productID == null) {
            model.addAttribute("message", "Enter ProductID you want to delete");
            return;
        }

        String sql = """
            DELETE FROM products
            WHERE productId = ?""";

        System.out.println(sql);

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try(connection; statement) {
            statement.setInt(1, productID);
            int count = statement.executeUpdate();

            if(count == 1) {
                model.addAttribute("message", "Update Successful");
            } else {
                model.addAttribute("message", "Error. More than 1 or 0 rows deleted.");
            }
        }
    }

    @GetMapping("sub3")
    public void method3() throws SQLException {
        String sql = """
                UPDATE shippers
                SET
                    shipperName = ?,
                    phone = ?
                WHERE
                    shipperId = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try(connection; statement) {
            statement.setString(1, "LeeKangIn");
            statement.setString(2, "01077778888");
            statement.setInt(3,1);

            int rows = statement.executeUpdate();

            if(rows == 1) {
                System.out.println("Update Sucessful");
            } else {
                System.out.println("Error");
            }
        }
    }

    @GetMapping("sub4")
    public void method4(@RequestParam("id") Integer shipperId, Model model) throws SQLException {
        String sql = """
                SELECT * FROM shippers
                WHERE shipperID = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try(connection; statement) {
            statement.setInt(1, shipperId);
            ResultSet resultSet = statement.executeQuery();

            try(resultSet) {
                if(resultSet.next()) {
                    model.addAttribute("shipper", Map.of("shipperId", resultSet.getInt("shipperId"),
                            "shipperName", resultSet.getString("shipperName"),
                            "phone", resultSet.getString("phone")));
                }
            }
        }
    }

    @PostMapping("sub4")
    public String method5(
            @RequestParam("id") Integer shipperId,
            @RequestParam("name") String shipperName,
            @RequestParam("phone") String phone,
            RedirectAttributes rttr
    ) throws SQLException {
        String sql = """
                UPDATE shippers
                SET shipperName = ?,
                    phone = ?
                WHERE
                    shipperId = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try(connection; statement) {
            statement.setString(1, shipperName);
            statement.setString(2, phone);
            statement.setInt(3, shipperId);

            int rows = statement.executeUpdate();

            if(rows == 1) {
                System.out.println("Update Successful");
            } else {
                System.out.println("0 or multiple record has been modified");
            }
        }

        rttr.addAttribute("id", shipperId);
        return "redirect:/main25/sub4";
    }
}
