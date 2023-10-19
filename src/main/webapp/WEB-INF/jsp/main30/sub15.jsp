<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-19
  Time: 오전 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>View and Update Customers</title>
</head>
<body>
    <h1>View Customers</h1>
    <hr>
    <div>
        <form action="/main30/sub15">
            <input type="text" name="customerId" placeholder="enter customer id">
            <button>VIEW</button>
        </form>
    </div>
    <hr>
    <h1>Update Customer Info</h1>
    <p>${message}</p>
    <form action="/main30/sub16" method="post">
        <div>
            <input type="text" name="customerId" value="${customer.customerId}" placeholder="customerID" readonly>
        </div>
        <div>
            <input type="text" name="customerName" value="${customer.customerName}" placeholder="customerName">
        </div>
        <div>
            <input type="text" name="contactName" value="${customer.contactName}" placeholder="contactName">
        </div>
        <div>
            <input type="text" name="address" value="${customer.address}" placeholder="address">
        </div>
        <div>
            <input type="text" name="city" value="${customer.city}" placeholder="city">
        </div>
        <div>
            <input type="text" name="postalCode" value="${customer.postalCode}" placeholder="postalCode">
        </div>
        <div>
            <input type="text" name="country" value="${customer.country}" placeholder="country">
        </div>
        <div>
            <button>EDIT</button>
        </div>
    </form>
</body>
</html>
