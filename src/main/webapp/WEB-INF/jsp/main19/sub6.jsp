<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-04
  Time: 오후 4:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Customer List</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>address</td>
        <td>country</td>
    </tr>
    <c:forEach items="${customerList}" var="supplier">
        <tr>
            <td>${supplier.id}</td>
            <td>${supplier.name}</td>
            <td>${supplier.address}</td>
            <td>${supplier.country}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
