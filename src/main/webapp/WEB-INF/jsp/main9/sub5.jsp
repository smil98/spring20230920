<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-22
  Time: 오전 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Practice</title>
    <style>
        p {
            text-indent:5%;
        }
    </style>
</head>
<body>
    <h1>Printing Maps</h1>
    <h2>Phones</h2>
    <p>${phones.phone1}</p>
    <p>${phones.phone2}</p>
    <hr>
    <h2>Capitals</h2>
    <p>${caps.korea}</p>
    <p>${caps.us}</p>
    <hr>
    <h2>Food</h2>
    <p>${foods["1st"]}</p>
    <p>${foods["2nd"]}</p>
</body>
</html>
