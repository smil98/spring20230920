<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-10
  Time: 오전 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Select Query</title>
    <style>
        form {
            padding: 10px;
            border: 1px solid black;
        }
        form div {
            margin-bottom:10px;
        }
        table {
            border-collapse: collapse;
            width:50%;
            margin-left: 25%;
        }
        th {
            background-color:yellowgreen;
            color:white;
            font-weight: bold;
        }
        tr {
            border-bottom: darkgrey;
        }
    </style>
</head>
<body>
<h1>Select Query Options</h1>
<form action="">
    <div>
        Search Type
        <select name="st">
            <option value="name1" ${searchType == 'name1' ? 'selected' : ''}>CustomerName</option>
            <option value="name2" ${searchType == 'name2' ? 'selected' : ''}>ContactName</option>
        </select>
    </div>
    <div>
        Search Keyword
        <input type="text" name="k" value="${keyword}">
    </div>
    <div>
        <button>SUBMIT</button>
    </div>
</form>
<table>
    <tr>
        <th>Customer Name</th>
        <th>Contact Name</th>
    </tr>
    <c:forEach items="${customers}" var="customer">
        <tr>
            <td>${customer.customerName}</td>
            <td>${customer.contactName}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
