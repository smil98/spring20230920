<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오후 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:choose>
    <c:when test="${param.age ge 20}">
        <p>can vote</p>
    </c:when>
    <c:when test="${param.age lt 20}">
        <p>cannot vote</p>
    </c:when>
    <c:otherwise>
        <p>Please enter age</p>
    </c:otherwise>
</c:choose>
</body>
</html>
