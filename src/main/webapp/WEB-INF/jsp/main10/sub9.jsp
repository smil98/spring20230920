<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오전 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        span {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
<h1>Operator Empty</h1>
<ul>
    <li><span>TRUE</span> If value is null, or the collection's size = 0</li>
    <p>\${empty a} : ${empty a}</p>
    <p>\${empty b} : ${empty b}</p>
    <p>\${empty c} : ${empty c}</p>
    <p>\${empty d} : ${empty d}</p>
    <p>\${empty e} : ${empty e}</p>
    <p>\${empty f} : ${empty f}</p>
    <p>\${empty g} : ${empty g}</p>
    <li><span>TRUE</span> even if no attribute was assigned</li>
    <p>\${empty h} : ${empty h}</p>
</ul>
    <h1>not empty (! empty)</h1>
<ul>
    <li><span>TRUE</span> if value exists, or collection's size > 0</li>
    <p>\${not empty a} : ${not empty a}</p>
    <p>\${not empty b} : ${not empty b}</p>
    <p>\${not empty c} : ${not empty c}</p>
    <p>\${not empty d} : ${not empty d}</p>
    <p>\${not empty e} : ${not empty e}</p>
    <p>\${not empty f} : ${not empty f}</p>
    <p>\${not empty g} : ${not empty g}</p>
</ul>
</body>
</html>
