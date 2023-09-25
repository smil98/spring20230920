<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오전 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Jstl if tag</title>
    <style>
        p {
            font-size: 1.5rem;
        }
    </style>
</head>
<body>
<h1>JSTL if tag</h1>
<h2> c:if test="" </h2>
<c:if test="true">
    <p>❤️</p>
</c:if>
<c:if test="false">
    <p>😒</p>
</c:if>

<hr>
<c:if test="${param.name eq 'son'}">
    <p>Hello Son</p>
</c:if>
<hr>
<h1>var: saves test result</h1>
<c:if test="${param.name eq 'son'}" var="isSon">
    <p>Hello Son</p>
    <p>\${isSon} : ${isSon}</p>
</c:if>
<!-- using var, can achieve same effect as if-else -->
<c:if test="${not isSon}">
    <p>You are not Son</p>
</c:if>
</body>
</html>
