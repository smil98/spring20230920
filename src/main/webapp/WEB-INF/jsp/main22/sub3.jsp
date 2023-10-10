<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-06
  Time: 오후 2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Showing Customer List</title>
    <style>
        h1 {
            margin-left:50%;
            transform:translateX(-15%);
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th {
            background-color:darkgoldenrod;
            color:white;
            font-weight: bold;
        }
        tr {
            border: 1px solid grey;
            text-align: center;
        }
        ul {
            display: flex;
            justify-content: space-evenly;
            list-style: none;
        }
        .currentPage {
            color:red;
            font-weight: bold;
            text-decoration: none;
            font-size: 1.2rem;
            line-height:20px;
        }
        .currentPage:hover {
            cursor:pointer;
        }
    </style>
</head>
<body>

<h1>Customer List</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
    </tr>
    <c:forEach items="${customerList}" var="supplier">
        <tr>
            <td>${supplier.id}</td>
            <td>${supplier.name}</td>
        </tr>
    </c:forEach>
</table>


<ul>
    <c:if test="${currentPage != 1}">
        <li><a href="/main22/sub3?p=1">FRONT</a></li>
        <li><a href="/main22/sub3?p=${currentPage-1}">PREV</a></li>
    </c:if>
<%--    <c:if test="${startPage != 1}">--%>
<%--        <li><a href="/main22/sub3?p=${startPage-1}">PREV</a></li>--%>
<%--    </c:if>--%>
<c:forEach begin="${startPage}" end="${endPage}" var="i">
    <li><a
            <c:if test="${i == currentPage}">
                class="currentPage"
            </c:if>
            href="/main22/sub3?p=${i}">${i}</a></li>
</c:forEach>
<%--    <c:if test="${endPage != totalPage}">--%>
<%--        <li><a href="/main22/sub3?p=${endPage+1}">NEXT</a></li>--%>
<%--    </c:if>--%>
        <c:if test="${currentPage != totalPage }">
            <li><a href="/main22/sub3?p=${currentPage+1}">NEXT</a></li>
            <li><a href="/main22/sub3?p=${totalPage}">END</a></li>
        </c:if>
</ul>
</body>
</html>
