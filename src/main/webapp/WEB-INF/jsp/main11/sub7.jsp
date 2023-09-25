<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오후 2:01
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
            width:50%;
            margin-left:25%;
        }
    </style>
</head>
<body>
    <c:choose>
        <c:when test="${param.show eq true}">
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
        </c:when>
        <c:otherwise>
            <h1>Data Not Found</h1>
        </c:otherwise>
    </c:choose>
</body>
</html>
