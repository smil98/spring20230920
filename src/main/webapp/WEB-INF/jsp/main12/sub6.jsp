<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오후 4:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Search Result</title>
</head>
<body>
<c:choose>
    <c:when test="${not empty search}">
        <h1>Search Results for : ${search}</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem laborum porro quas tenetur? Consequuntur distinctio facilis illum labore molestias, nesciunt nostrum quae quisquam sed voluptatem? Alias ducimus expedita nesciunt placeat.</p>
    </c:when>
    <c:otherwise>
        <h1>Nothing Found</h1>
        <h3>Are you sure you entered something?</h3>
    </c:otherwise>
</c:choose>
<a href="/main12/sub5">Search again</a>
</body>
</html>
