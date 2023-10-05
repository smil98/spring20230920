<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-05
  Time: 오후 4:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        h1 {
            margin-left: 50%;
            transform:translateX(-50%);
            text-align:center;
        }
        table {
            border-collapse: collapse;
            width:100%;
        }
        th {
            background-color:darkorange;
            color:white;
            font-weight: bold;
            height:30px;
            text-align: center;
        }
        tr {
            border-bottom: 1px solid darkgrey;
        }
        tr:hover {
            background-color: yellow;
            transition:0.5s;
        }
        a {
            text-decoration: none;
            margin-left:50%;
            transform:translateX(-50%);
        }
        a:hover {
            font-weight: bold;
            text-space: 20px;
            transition:0.5s;
            cursor:pointer;
        }
    </style>
</head>
<body>
<h1>Supplier List for ${countryList}</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Contact Name</th>
        <th>Address</th>
        <th>City</th>
        <th>Postal Code</th>
        <th>Country</th>
        <th>Phone</th>
    </tr>
    <c:forEach items="${supplierList}" var="supplier">
        <tr>
            <td>${supplier.id}</td>
            <td>${supplier.name}</td>
            <td>${supplier.contactName}</td>
            <td>${supplier.address}</td>
            <td>${supplier.city}</td>
            <td>${supplier.postalCode}</td>
            <td>${supplier.country}</td>
            <td>${supplier.phone}</td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="http://localhost:8080/main20/sub10">Return to Redo</a>
</body>
</html>
