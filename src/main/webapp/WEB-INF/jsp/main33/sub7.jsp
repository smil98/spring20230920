<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-20
  Time: 오후 3:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>upload multiple files</title>
</head>
<body>
<form action="/main33/sub8" method="post" enctype="multipart/form-data">
    <input type="file" name="files" multiple>
    <input type="submit" value="Submit">
</form>
</body>
</html>
