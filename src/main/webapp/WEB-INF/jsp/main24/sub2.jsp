<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-10
  Time: 오후 2:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Updating Table</title>
    <style>
        form {
            padding:20px;
        }
        form div {
            margin-bottom:10px;
        }
    </style>
</head>
<body>
<form action="">
    <div>
        Supplier Name:
        <input type="text" name="supplierName">
    </div>
    <div>
        Contact Name:
        <input type="text" name="contactName">
    </div>
    <div>
        Address:
        <input type="text" name="address">
    </div>
    <div>
        City:
        <input type="text" name="city">
    </div>
    <div>
        Postal Code:
        <input type="text" name="postalCode">
    </div>
    <div>
        Country:
        <input type="text" name="country">
    </div>
    <div>
        Phone:
        <input type="text" name="phone">
    </div>
    <button>SUBMIT</button>
</form>

<table>
    <tr>
        <th>ID</th>
        <th>Supplier Name</th>
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
</body>
</html>
