<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오전 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        li {
            font-size:1.5rem;
            color:orange;
            font-weight: bold;
        }
        .box {
            width:100%;
            display: flex;
            justify-content: space-between;
        }
        .box > div {
            width:30%;
            border:1px solid green;
        }
    </style>
</head>
<body>
    <h1>Operators in EL</h1>
    <ul><h2>Mathematics</h2>
        <p>Also works for String, but different from java</p>
        <li>+</li>
        <p>${a} + ${b} = ${a+b}</p>
        <p>${c} + ${d} = ${c+d}</p>
        <li>-</li>
        <p>${a} - ${b} = ${a-b}</p>
        <p>${c} - ${d} = ${c-d}</p>
        <li>*</li>
        <p>${a} * ${b} = ${a*b}</p>
        <p>${c} * ${d} = ${c*d}</p>
        <li>/, (div)</li>
        <p>${a} / ${b} = ${a/b}</p>
        <p>${c} / ${d} = ${c/d}</p>
        <p>${a} / ${b} = ${a div b}</p>
        <p>${c} / ${d} = ${c div d}</p>
        <li>Modulo, Remainder: %, (mod)</li>
        <p>${a} % ${b} = ${a%b}</p>
        <p>${c} % ${d} = ${c%d}</p>
        <p>${b} % ${a} = ${b mod a}</p>
        <p>${c} % ${a} = ${c mod a}</p>
    </ul>

    <hr>

    <c:forEach begin="1" end="9" var="i">
        <p>2 * ${i} = ${2 * i}</p>
    </c:forEach>

    <hr>
    <p>Print multiplication</p>
    <c:forEach begin="2" end="9" var="i">
            <h3>${i}단:</h3>
        <c:forEach begin="1" end="9" var="j">
            <p>${i} * ${j} = ${i * j}</p>
        </c:forEach>
    </c:forEach>

    <hr>
    <div class="box">
    <c:forEach begin="1" end="8" var="i">
        <div>
        <h3>${10-i}단:</h3>
        <c:forEach begin="1" end="9" var="j">
            <p>${10-i} * ${j} = ${(10-i) * j}</p>
        </c:forEach>
        </div>
    </c:forEach>
    </div>
</body>
</html>
