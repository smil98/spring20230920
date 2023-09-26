<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-26
  Time: 오후 3:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main14/sub4" method="post">
    <div>
        <label for="input1">Title: </label>
        <input type="text" name="title" id="input1">
    </div>
    <div>
        <label for="input2">Content: </label>
        <textarea name="content" id="input2" cols="30" rows="10"></textarea>
    </div>
    <button>submit</button>
</form>
</body>
</html>
