<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오전 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Practice implicit el objects</title>
    <style>
        div {
            border: 1px solid black;
        }
        p {
            text-indent: 10px;
        }
    </style>
</head>
<body>
    <c:if test="${ (param.num >=2) && (param.num <= 9)}" var="okNum">
        <h1>Print GuGudan of ${param.num}:</h1>
        <div>
            <c:forEach begin="1" end="9" var="i">
                <p>${param.num} * ${i} = ${param.num * i}</p>
            </c:forEach>
        </div>
    </c:if>
<%--    <c:if test="${ (empty param) or (param.num < 2) or (param.num > 9)}">--%>
    <c:if test="${not okNum}">
        <h1>Input Error!</h1>
        <h2 style="font-weight: normal">Please check whether entered value is btw 2~9</h2>
    </c:if>
</body>
</html>
