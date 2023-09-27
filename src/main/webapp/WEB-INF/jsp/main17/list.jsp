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
<div>
    <div>
        <a href="/main17/new">Write New Post</a>
    </div>
</div>
<div>
    ${message}
</div>
<h1>Lists of Posts</h1>
<%--table>tr>th*2--%>
<table>
    <tr>
        <th>id</th>
        <th>title</th>
    </tr>
    <c:forEach items="${postList}" var="post" varStatus="status">
        <tr>
            <td>${status.index}</td>
            <td>
                <a href="/main17/view?id=${status.index}">
                        ${post.title}
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>