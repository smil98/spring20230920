<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-04
  Time: 오후 3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            border-collapse: collapse;
            width:100%;
            text-align:center;
            border: 2px solid black;
        }
        th {
            background-color: blue;
            color: white;
            border: 2px solid black;
        }
        tr{
            border: 1px solid black;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>city</th>
        <th>country</th>
    </tr>
    <c:forEach items="${customers}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.city}</td>
            <td>${customer.country}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
