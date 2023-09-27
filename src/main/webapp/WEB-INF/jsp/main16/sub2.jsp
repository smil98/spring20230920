<%--
  Created by IntelliJ IDEA.
  User: seungmi01pd2017
  Date: 2023/09/27
  Time: 11:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Visit Tally</h1>
<h4>Total Number of Visit: ${sessionScope.count}</h4>
<h4>Request tally to this server: ${applicationScope.count}</h4>
</body>
</html>
