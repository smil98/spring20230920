<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-22
  Time: 오후 12:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Complex</title>
</head>
<body>
    <h1>Mix Them Up</h1>
        <h2>Son's Info</h2>
            <h3>${students[0].firstName}</h3>
        <h2>Lee's Info</h2>
            <h3>${students[1].firstName}</h3>
    <hr>
    <h1>Students</h1>
    <h2>Group of Students</h2>
    <h3>${studentList[0].firstName}</h3>
    <h3>${studentList[1].firstName}</h3>
    <h3>${studentList[2].firstName}</h3>
</body>
</html>
