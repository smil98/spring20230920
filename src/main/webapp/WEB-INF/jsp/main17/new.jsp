<%--
  Created by IntelliJ IDEA.
  User: seungmi01pd2017
  Date: 2023/09/27
  Time: 5:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h1>Write a New Post</h1>
<form method="post">
  <%--div>label[for=titleInput]{제목}+input#titleInput[name=title]--%>
  <div>
    <label for="titleInput">Title</label>
    <input type="text" name="title" id="titleInput">
  </div>
  <div>
    <%--textarea[placeholder=본문][name=body]--%>
    <textarea name="body" cols="30" rows="10" placeholder="content"></textarea>
  </div>
  <div>
    <button>Submit</button>
  </div>
</form>
</body>
</html>
