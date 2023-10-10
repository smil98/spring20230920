package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto18Employee;
import com.example.spring20230920.domain.Suppliers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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

//        executeQuery only when selecting -> returns rows that qualify search
//        executeUpdate when modifying (INSERT, DELETE, UPDATE) aka DML data manipulation Language
//        returns # of row affected
        int count = statement.executeUpdate();
        if(count == 1) {
            System.out.println("Update Sucessful");
        } else {
            System.out.println("Something is wrong with the update");
        }

    }

    @GetMapping("sub2")
    public void method2(String supplierName, String contactName,
                        String address, String city,
                        String postalCode, String country,
                        String phone, Model model) throws SQLException {
        String sql = """
                INSERT INTO suppliers (SupplierName, ContactName, Address, City, 
                PostalCode, Country, Phone)
                VALUE(?,?,?,?,?,?,?)
                """;

        String[] values = {supplierName, contactName, address, city,
                postalCode, country, phone};

        boolean anyValuePresent = false;

        for(String value : values) {
            if(value != null && !value.isEmpty()) {
                anyValuePresent = true;
                break;
            }
        }

        if(anyValuePresent) {
            Connection connection = dataSource.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            for (int i = 1; i <= 7; i++) {
                statement.setString(i, values[i-1]);
            }

            int count = statement.executeUpdate();

            if(count == 1) {
                System.out.println("Update Sucessful");
            } else {
                System.out.println("Error");
            }
        }

        String sql2 = """
                SELECT *
                FROM suppliers
                ORDER BY SupplierID DESC;
                """;

        Connection connection2 = dataSource.getConnection();
        Statement statement = connection2.createStatement();
        ResultSet resultSet = statement.executeQuery(sql2);

        List<Suppliers> list = new ArrayList<>();

        try(connection2; statement; resultSet) {
            while(resultSet.next()) {
                Suppliers suppliers = new Suppliers();
                suppliers.setId(resultSet.getInt("SupplierID"));
                suppliers.setName(resultSet.getString("SupplierName"));
                suppliers.setContactName(resultSet.getString("ContactName"));
                suppliers.setAddress(resultSet.getString("Address"));
                suppliers.setCity(resultSet.getString("City"));
                suppliers.setPostalCode(resultSet.getString("PostalCode"));
                suppliers.setCountry(resultSet.getString("Country"));
                suppliers.setPhone(resultSet.getString("Phone"));
                list.add(suppliers);
            }
        }

        model.addAttribute("supplierList", list);
    }

    @GetMapping("sub3")
    public void method3() {
    }

    @PostMapping("sub3")
    public void method4(MyDto18Employee employee) throws SQLException {
        String addSql = """
                INSERT INTO employees(LastName, FirstName, BirthDate, Photo, Notes)
                VALUE (?, ?, ?, ?, ?)
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(addSql);

        try(connection; statement) {
            statement.setString(1, employee.getLastName());
            statement.setString(2, employee.getFirstName());
            statement.setTimestamp(3, Timestamp.valueOf(employee.getBirthDate().atStartOfDay()));
            statement.setString(4, employee.getPhoto());
            statement.setString(5, employee.getNotes());

            int count = statement.executeUpdate();

            if(count == 1) {
                System.out.println("Update Successful");
            } else {
                System.out.println("Error");
            }

        }


    }
}
