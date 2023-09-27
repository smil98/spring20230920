<%--
  Created by IntelliJ IDEA.
  User: seungmi01pd2017
  Date: 2023/09/27
  Time: 5:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h1>Taking Model out of Attribute and Display</h1>
<ul>
  <c:forEach items="${foodList}" var="item">
    <li>${item}</li>
  </c:forEach>
</ul>
</body>
</html>
