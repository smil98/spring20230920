<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-26
  Time: 오후 3:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>GET, POST Mapping Practice</title>
</head>
<body>
<form action="/main14/sub6" method="post">
    <div>
        <label for="input1">Name: </label>
        <input type="text" name="userName" id="input1" placeholder="Enter Name">
    </div>
    <div>
        <label for="input2">Password</label>
        <input type="password" name="password" id="input2" placeholder="Enter Password">
    </div>
    <button>submit</button>
</form>
</body>
</html>
