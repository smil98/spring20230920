package com.example.spring20230920.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@Controller
@RequestMapping("main24")
public class Controller24 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1() throws SQLException {
        String sql = """
                INSERT INTO products(ProductName, SupplierID, CategoryID, Unit, Price)
                VALUE (?,?,?,?,?)
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, "BibimBob");
        statement.setInt(2,3);
        statement.setInt(3,4);
        statement.setString(4, "1 Bowl");
        statement.setDouble(5, 500.00d);

//        executeQuery only when selecting
//        executeUpdate when modifying (INSERT, DELETE, UPDATE)
        statement.executeUpdate();

    }
}
