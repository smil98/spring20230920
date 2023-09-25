<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오전 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Implicit EL Objects</h1>
<%--    <p>${pageScope}</p>--%>
<%--    <p>${param}</p>--%>
<%--    <p>${header}</p>--%>
<ul>
    <li>\${param} : Request Parameter</li>
    <p>When user sends a request, Spring divides the query string by &. Request Parameter equals to entries.
    If the user requests localhost:8080/main11/sub1?<span style="color:red">name=son</span>&<span style="color: blue">age=33</span>, param.name would be son, param.age would be 33</p>
    <li>Examples</li>
    <p>\${param.name} : ${param.name}</p>
    <p>\${param.age} : ${param.age}</p>
    <p>\${param.email} : ${param.email}</p>
</ul>
</body>
</html>
