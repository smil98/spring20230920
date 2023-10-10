<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-10
  Time: 오후 3:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Adding Data</title>
</head>
<body>
<h1>Adding New Employee</h1>
<form action="/main24/sub3" method="post">
    <div>
        <input type="text" name="lastName" value="doosik">
    </div>
    <div>
        <input type="text" name="firstName" value ="kim">
    </div>
    <div>
        <input type="date" name="birthDate" value = "2002-02-02">
    </div>
    <div>
        <input type="text" name="photo" value = "PicPic">
    </div>
    <div>
        <textarea name="notes" id="" cols="30" rows="10"></textarea>
    </div>
    <div>
        <input type="submit" value="submit">
    </div>
</form>
</body>
</html>
