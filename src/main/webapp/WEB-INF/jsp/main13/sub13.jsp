<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-26
  Time: 오후 2:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main13/sub14">
    <div>
    <select name="hobby" id="hobby">
        <option value="soccer">soccer</option>
        <option value="baseball">baseball</option>
        <option value="volleyball">volleyball</option>
    </select>
    </div>
    <div>
        <select name="food" id="food" multiple="">
            <option value="pizza">pizza</option>
            <option value="coffee">coffee</option>
            <option value="burger">burger</option>
            <option value="milk">milk</option>
            <option value="tanghuru">tanghuru</option>
        </select>
    </div>
    <button>submit</button>
</form>
</body>
</html>
