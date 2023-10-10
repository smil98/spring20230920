<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-10
  Time: 오전 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Show Data</title>
    <style>
        h1 {
            text-align:center;
        }
        table {
            width:20%;
            margin-left:40%;
            border-collapse: collapse;
        }
        th {
            background-color:cadetblue;
            color:white;
            font-weight:bold;
        }
        td {
            border-bottom:1px solid grey;
        }
    </style>
</head>
<body>
<h1>Customers that has ${keyword}</h1>
<br>
<table>
    <tr>
        <th>Customer Name</th>
    </tr>
    <c:forEach items="${customers}" var="supplier">
        <tr>
            <td>${supplier}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
