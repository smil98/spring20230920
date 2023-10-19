<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-19
  Time: 오전 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>View Employee and Update</title>
</head>
<body>
<h1>View Employee Data</h1>
<div>
    <form action="/main30/sub13">
        <input type="text" name="employeeId" placeholder="enter employee id">
        <button>View</button>
    </form>
</div>
<h2>Update Employee Info</h2>
<p>${message}</p>
<form action="/main30/sub14" method="post">
    <div>
        <input type="text" name="employeeId" value="${employee.employeeId}" readonly>
    </div>
    <div>
        <input type="text" name="lastName" value="${employee.lastName}">
    </div>
    <div>
        <input type="text" name="firstName" value="${employee.firstName}">
    </div>
    <div>
        <input type="text" name="birthDate" value="${employee.birthDate}">
    </div>
    <div>
        <input type="text" name="photo" value="${employee.photo}">
    </div>
    <div>
        <textarea name="notes" value="${employee.notes}" cols="30" rows="10">${employee.notes}</textarea>
    </div>
    <div>
        <button>Edit</button>
    </div>
</form>
</body>
</html>
