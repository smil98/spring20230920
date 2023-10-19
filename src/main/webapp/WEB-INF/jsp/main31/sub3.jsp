<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-19
  Time: 오후 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>View Customers</title>
    <style>
        table {
            border-collapse: collapse;
            border: 1px solid black;
        }
        th {
            background-color:gainsboro;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>View Customers</h1>
    <hr>
    <form action="/main31/sub3">
        <select name="code" id="">
            <option value="1">Customer Name</option>
            <option value="2">Contact Name</option>
        </select>
        <input type="text" name="k" placeholder="keyword">
        <button>Submit</button>
    </form>

    <hr>
    <table>
        <tr>
            <th>Customer Name</th>
            <th>Contact Name</th>
        </tr>
        <c:forEach items="${names}" var="name">
            <tr>
                <td>${name.customerName}</td>
                <td>${name.contactName}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
