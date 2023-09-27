<%--
  Created by IntelliJ IDEA.
  User: seungmi01pd2017
  Date: 2023/09/27
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<div>
  <div>
    <a href="/main17/list">View List</a>
  </div>
</div>
<div>
  ${message}
</div>
<h1>View Post</h1>
<div>
  <label for="titleInput">Title</label>
  <input type="text" name="title" id="titleInput" readonly value="${post.title}">
</div>
<div>
  <%--textarea[placeholder=본문][name=body]--%>
  <textarea name="body" cols="30" rows="10" readonly>${post.body}</textarea>
</div>
</body>
</html>
