<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-22
  Time: 오후 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>For Each Tag</h1>
    <h2>Print Content by Loop</h2>
    <h3>Main attributes: begin, end, var, items, varStatus</h3>
    <%--Includes both begin and end
        end must be greater than begin
        begin must be greater or equal to 0
    --%>
    <c:forEach begin="1" end="3">
        <li>Lorem ipsum</li>
    </c:forEach>

    <hr>
    <c:forEach begin="0" end="2" var="num">
        <!--num is like i in loop-->
        <li>num : ${num}</li>
    </c:forEach>
    <hr>
    <c:forEach begin="0" end="2" var="car">
        <li>car: ${myList[car]}</li>
    </c:forEach>
    <hr>
    <!-- Even though you don't know length of myList can use loop in this form -->
    <c:forEach items="${myList}" var="item">
        <li>car: ${item}</li>
    </c:forEach>
</body>
</html>
