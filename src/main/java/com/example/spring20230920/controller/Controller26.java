package com.example.spring20230920.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Controller
@RequestMapping("main26")
public class Controller26 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1() throws SQLException {
        String sql = """
                INSERT INTO mydb1.my_table12
                VALUE (?, ?, ?, ?, ?)
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try(connection; statement) {
            statement.setInt(1, 348920340);
            statement.setDouble(2, 3.24);
            statement.setString(3, "string val");
            statement.setTimestamp(4, Timestamp.valueOf(LocalDate.now().atStartOfDay()));
            statement.setTimestamp(5, Timestamp.valueOf(LocalDateTime.now()));

            int rows = statement.executeUpdate();
            if (row == 1) {
                System.out.println("Update Sucessful");
            } else {
                System.out.println("Oops! Something is Wrong!");
            }
        }
    }

    @GetMapping("sub2")
    public void method2() throws Exception {
        String sql = """
                SELECT * FROM mydb1.my_table12
                LIMIT 1
                """;

        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        try (connection; statement; resultSet) {
            if(resultSet.next()) {
                int intCol = resultSet.getInt("int_col");
                double decCol = resultSet.getDouble("dec_col");
                String strCol = resultSet.getString("str_col");
                LocalDate dateCol = resultSet.getTimestamp("date_col").toLocalDateTime().toLocalDate();
                LocalDateTime date_time_col = resultSet.getTimestamp("date_time_col").toLocalDateTime();

                System.out.println("intCol = " + intCol);
                System.out.println("decCol = " + decCol);
                System.out.println("strCol = " + strCol);
                System.out.println("dateCol = " + dateCol);
                System.out.println("date_time_col = " + date_time_col);
            }
        }
    }
}
