<%--
  Created by IntelliJ IDEA.
  User: seungmi01pd2017
  Date: 2023/09/27
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Food Selected</h1>
<ul>
    <c:forEach items="${foods}" var="item">
        <li>${item}</li>
    </c:forEach>
</ul>
<a href="/main15/sub7">Enter Again</a>
<a href="/main15/sub9">Or go to sub9</a>
</body>
</html>
