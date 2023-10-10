<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-10
  Time: 오전 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Select Query Options</title>
    <style>
        h2 {
            text-align:center;
        }

        form {
            border: 1px solid black;
            padding:20px;
        }
        form div {
            margin-bottom:10px;
        }
        table {
            border-collapse: collapse;
        }
        tr {
            border-bottom: 1px dashed darkgrey;
        }
        th {
            background-color:beige;
            font-weight: bold;
            border: none;
        }
    </style>
</head>
<body>
<form action="">
    <div>
        Select Options
        <select name="t" id="">
            <option value="lname" ${options == 'lname' ? 'selected' : ''}>Last Name</option>
            <option value="fname" ${options == 'fname' ? 'selected' : ''}>First Name</option>
            <option value="note" ${options == 'note' ? 'selected' : ''}>Notes</option>
        </select>
    </div>
    <div>
        Keyword
        <input type="text" name="k" value="">
    </div>
    <button>SUBMIT</button>
</form>
<h2>List of Employee</h2>
<h3>Selecting from ${option} with ${keyword} in it:</h3>
<table>
    <tr>
        <th>Employee Name</th>
        <th>Notes</th>
    </tr>
    <c:forEach items="${employees}" var="employee">
        <tr>
            <td>${employee.fullName}</td>
            <td>${employee.Notes}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
