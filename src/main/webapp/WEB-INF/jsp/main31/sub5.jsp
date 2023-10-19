<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-19
  Time: 오후 4:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>View Customers</h1>
<form action="/main31/sub5">
    City/Country
    <select name="type" id="">
        <option value="1">City</option>
        <option value="2">Country</option>
    </select>
    City
    <select name="city" multiple>
        <c:forEach items="${cityList}" var="city">
            <option value="${city}">${city}</option>
        </c:forEach>
    </select>
    Country
    <select name="country" multiple>
        <c:forEach items="${countryList}" var="country">
            <option value="${country}">${country}</option>
        </c:forEach>
    </select>
    <button>VIEW</button>
</form>

<hr>

<table>
    <tr>
        <th>Name</th>
        <th>City</th>
        <th>Country</th>
    </tr>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.city}</td>
            <td>${customer.country}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
