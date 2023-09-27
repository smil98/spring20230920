<%--
  Created by IntelliJ IDEA.
  User: seungmi01pd2017
  Date: 2023/09/27
  Time: 10:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Print Attributes</title>
</head>
<body>
<h1>Printing Attributes</h1>
<ul>
    <c:forEach items="${items}" var="itemModel">
        <li>${itemModel}</li>
    </c:forEach>
</ul>
<ul>
    <c:forEach items="${sessionScope.items}" var="itemSession">
        <li>${itemSession}</li>
    </c:forEach>
</ul>
</body>
</html>
