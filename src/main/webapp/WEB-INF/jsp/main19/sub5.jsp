<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-04
  Time: 오후 3:36
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
            border: 1px solid black;
            width:100%;
            text-align: center;
        }
        th {
            background-color:hotpink;
            font-weight:bold;
        }
        tr {
            border:1px solid black;
        }

    </style>
</head>
<body>
<h1>Product List</h1>
<table>
    <tr>
        <th>No</th>
        <th>Product Name</th>
        <th>Unit</th>
        <th>Price</th>
    </tr>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.pid}</td>
            <td>${product.productName}</td>
            <td>${product.unit}</td>
            <td>${product.price}</td>
        </tr>
    </c:forEach>
    
</table>
</body>
</html>
