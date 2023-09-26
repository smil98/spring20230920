<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-26
  Time: 오후 2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--get: sends through query string in route
- input is shown in query string
- has length limit (standards may vary amongst browsers)
--%>

<%--post: sends it through request content
- inputs not shown in url(route)
- has no length limit
- recommended for file transfers(since there is no limit)
--%>

<%--http://localhost:8080/main14/sub2?id=ab&password=1234--%>
<form action="/main14/sub2" method="get">
    <dv>
        id:
        <input type="text" name="id">
    </dv>
    <div>
        password:
        <input type="password" name="password">
    </div>
    <button>submit</button>
</form>

<hr>
<%--http://localhost:8080/main14/sub2--%>
<form action="/main14/sub2" method="post">
    <dv>
        id:
        <input type="text" name="id">
    </dv>
    <div>
        password:
        <input type="password" name="password">
    </div>
    <button>submit</button>
</form>
</body>
</html>
