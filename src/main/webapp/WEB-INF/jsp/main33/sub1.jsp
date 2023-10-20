<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-20
  Time: 오후 2:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Upload File</h1>
<%--file upload form must be in this form
method = "post" enctype="multipart/form-data"--%>
<form action="/main33/sub2" method="post" enctype="multipart/form-data">
    <div>
        name
        <input type="text" name="name">
    </div>
    <div>
        age
        <input type="text" name="age">
    </div>
    <div>
        <input type="file" name="myFile">
    </div>
    <div>
        <input type="submit" value="Upload">
    </div>
</form>
</body>
</html>
