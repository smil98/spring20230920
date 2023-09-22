<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-22
  Time: 오후 2:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Quiz</title>
    <style>
        span {
            font-size: 1.3rem;
            font-weight: bold;
            color: red;
        }
        .box {
            border:1px solid black;
            margin:5px;
            padding:10px;
            display:flex;
            justify-content: space-between;
            width:50%;
            margin-left:25%;
        }
        .box > div {
            width:45%;
            border:2px solid orange;
        }
    </style>
</head>
<body>
    <h1>Loop Quiz</h1>
    <h2>Print with forEach</h2>
    <c:forEach begin="0" end="3" var="i">
        <p>${foodList[i]}</p>
    </c:forEach>
    <hr>
    <c:forEach items="${names}" var="i">
        <p>Name : ${i}</p>
    </c:forEach>
    <hr>
    <h2>varStatus: </h2>
    <c:forEach begin="0" end="3" var= "n" varStatus="status">
        <p><span>${status.count}</span>: ${n}</p>
    </c:forEach>
    <hr>
    <c:forEach begin="0" end="3" var= "n" varStatus="status">
        <div class="box">
            <div class="content1">
                    n: ${n}
            </div>
            <div class="content2">
                    <div>count: ${status.count}</div>
                    <div>index: ${status.index}</div>
                    <div>current: ${status.current}</div>
                    <div>first: ${status.first}</div>
                    <div>last: ${status.last}</div>
            </div>
        </div>
    </c:forEach>
    <hr>
    <c:forEach items="${names}" var="name" varStatus="status">
        <div class="box">
            <div>name : ${name}</div>
            <div>
                <div>count: ${status.count}</div>
                <div>index: ${status.index}</div>
                <div>current: ${status.current}</div>
                <div>first: ${status.first}</div>
                <div>last: ${status.last}</div>
            </div>
        </div>
    </c:forEach>
    <hr>
    <ul>
        <c:forEach items="${foodList}" var="food" varStatus="s">
            <li>${s.count} : ${food}</li>
        </c:forEach>
    </ul>

</body>
</html>
