<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-04
  Time: 오후 2:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>SQL Testing</title>
  <style>
    table {
      border-collapse: collapse;
      border: 1px solid black;
      width:100%;
    }
  </style>
</head>
<body>
<table>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Phone</th>
  </tr>
  <c:forEach items="${suppliers}" var="supplier">
    <tr>
      <td>${supplier.id}</td>
      <td>${supplier.name}</td>
      <td>${supplier.phone}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
