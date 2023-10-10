package com.example.spring20230920.controller;

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
import java.util.Map;

@Controller
@RequestMapping("main22")
public class Controller22 {
    @Autowired
    DataSource dataSource;

    @GetMapping("sub1")
    public void method1(Integer page) throws SQLException {
        String sql = """
                SELECT CustomerID id, CustomerName name
                FROM customers
                ORDER BY id
                LIMIT ?, ?
        """;
        Integer perPage = 10;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, perPage * (page-1));
        statement.setInt(2, perPage);
        ResultSet resultSet = statement.executeQuery();

        try(connection; statement; resultSet) {
            System.out.println("Customers List");
            while(resultSet.next()) {
                String id = resultSet.getString("id");
                String name = resultSet.getString("name");
                System.out.println( id + " : " + name);
            }
        }
    }

    @GetMapping("sub2")
    public String method2(@RequestParam(defaultValue = "1") Integer p, Model model) throws SQLException {
        String sql = """
                SELECT *
                FROM suppliers
                ORDER BY SupplierID
                LIMIT ?, ?
                """;

        String sql2 = """
                SELECT COUNT(*)
                FROM suppliers
                """;

        Connection connection = dataSource.getConnection();
        Statement statement2 = connection.createStatement();
        ResultSet resultSet2 = statement2.executeQuery(sql2);

//      Getting total amount of data to get total page number
        int tally =0;
        int totalPage;

        while(resultSet2.next()) {
            tally = resultSet2.getInt(1);
        }

        if( tally % 7 !=0 ) {
            totalPage = (tally/7) + 1;
        } else {
            totalPage = tally / 7;
        }

        if(p > totalPage || p < 0) {
            model.addAttribute("errorMessage", "Please Enter Correct Page Number");
        } else {
            PreparedStatement statement = connection.prepareStatement(sql);
            if(p != 0) {
                statement.setInt(1, 7*(p-1));
                model.addAttribute("currentPage", p);
            } else {
                model.addAttribute("currentPage", 1);
                statement.setInt(1, 7);
            }
            statement.setInt(2,7);
            ResultSet resultSet = statement.executeQuery();

            List<Suppliers> list = new ArrayList<>();

            try(connection; statement; resultSet) {
                while(resultSet.next()) {
                    Suppliers suppliers = new Suppliers();
                    suppliers.setId(resultSet.getInt(1));
                    suppliers.setName(resultSet.getString(2));
                    suppliers.setContactName(resultSet.getString(3));
                    suppliers.setAddress(resultSet.getString(4));
                    suppliers.setCity(resultSet.getString(5));
                    suppliers.setPostalCode(resultSet.getString(6));
                    suppliers.setCountry(resultSet.getString(7));
                    suppliers.setPhone(resultSet.getString(8));
                    list.add(suppliers);
                }
            }
            model.addAttribute("supplierList", list);
        }

        model.addAttribute("totalPage", totalPage);
        return "/main20/sub11";
    }

    @GetMapping("sub3")
    public void method3(@RequestParam(defaultValue = "1") Integer p, Model model) throws SQLException {
        String sql1 = """
                SELECT COUNT(*)
                FROM customers
                """;

        String sql2 = """
                SELECT CustomerID id, CustomerName name
                FROM customers
                ORDER BY CustomerID
                LIMIT ?, ?
                """;

        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        ResultSet resultSet1 = statement.executeQuery(sql1);
        int tally =0;
        int totalPage=0;
        int perPage = 5;

        try(connection; statement; resultSet1) {
            while(resultSet1.next()) {
                    tally = resultSet1.getInt(1);
                    if(tally % perPage > 0) {
                        totalPage = (tally/perPage) +1;
                    } else {
                        totalPage = tally /perPage;
                    }
            }
        }


        model.addAttribute("totalPage", totalPage);

        Connection connection1 = dataSource.getConnection();
        PreparedStatement preparedStatement = connection1.prepareStatement(sql2);
        preparedStatement.setInt(1, perPage*(p-1));
        preparedStatement.setInt(2, perPage);
        ResultSet resultSet2 = preparedStatement.executeQuery();

        List<Map<String, String>> list = new ArrayList<>();

        try(connection1; preparedStatement; resultSet2) {
            while(resultSet2.next()) {
                String id = resultSet2.getString("id");
                String name = resultSet2.getString("name");
                list.add(Map.of("id", id, "name", name));
            }
        }

        int startPage = 0;
        startPage = ((p-1)/5)*5+1;
        int endPage = startPage+4;
        endPage = Math.min(endPage, totalPage);

        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);
        model.addAttribute("currentPage", p);
        model.addAttribute("customerList", list);
    }
}
