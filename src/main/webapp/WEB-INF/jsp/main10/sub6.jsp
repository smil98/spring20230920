<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-22
  Time: 오후 3:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        h1 {
            text-align: center;
        }
        table {
            border:1px solid black;
            width:60%;
            margin-left:20%;
            overflow: hidden;
            border-collapse: collapse;
        }
        th {
            background-color:darkgrey;
            color:white;
            width:20px;
            height:1.6rem;
            text-align: center;
        }
        tr {
            line-height:1.5rem;
        }
        tr:hover {
            background:yellow;
        }
        td {
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Bring Data to Table Format</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Class</th>
            <th>Phone</th>
        </tr>
    <c:forEach items="${sports}" var="sport">
        <tr>
            <td>${sport.id}</td>
            <td>${sport.firstName}</td>
            <td>${sport.lastName}</td>
            <td>${sport.className}</td>
            <td>${sport.phoneNumber}</td>
        </tr>
    </c:forEach>
    </table>
</body>
</html>
