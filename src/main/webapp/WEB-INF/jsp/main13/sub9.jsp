<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-26
  Time: 오후 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main13/sub10">
    <div>
        <label for="input1">Title</label>
        <input type="text" id="input1" name="title">
    </div>
    <div>
        <label for="textarea1">Content</label>
        <textarea name="textarea1" id="textarea1" name="contentBody" id="" cols="30" rows="10"></textarea>
    </div>
    <button>send</button>
</form>
</body>
</html>
