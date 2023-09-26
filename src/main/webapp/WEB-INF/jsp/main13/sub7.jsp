<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-26
  Time: 오후 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main13/sub8">
    <div>
    <label for="userId">ID :</label>
    <input type="number" name="id" id="userId">
    </div>
    <div>
        <label for="userName">Name :</label>
        <input type="text" name="name" id="userName" required>
    </div>
    <div>
        <label for="address">Address</label>
        <input type="text" name="address" id="address">
    </div>
    <div>
        <label for="schedule">Schedule</label>
        <input type="datetime-local" name="schedule" id="schedule">
    </div>
    <div>
        <p>To Dos</p>
        <label for="cleanRoom">Clean Room</label>
        <input type="checkbox" name="todos" value="clean room" id="cleanRoom">
        <label for="shower">Take a Shower</label>
        <input type="checkbox" name="todos" value="take a shower" id="shower">
        <label for="coding">coding</label>
        <input type="checkbox" name="todos" value="coding" id="coding">
    </div>
    <button>Submit</button>
</form>
</body>
</html>
