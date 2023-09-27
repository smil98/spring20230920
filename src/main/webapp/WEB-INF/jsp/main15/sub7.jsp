<%--
  Created by IntelliJ IDEA.
  User: seungmi01pd2017
  Date: 2023/09/27
  Time: 9:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Choose Favorite Food</h1>
<form action="/main15/sub8" method="post">
  <div>
    <label for="input1">pizza</label>
    <input type="checkbox" name="foods" id="input1" value="pizza">
  </div>
  <div>
    <label for="input2">melon</label>
    <input type="checkbox" name="foods" id="input2" value="melon">
  </div>
  <div>
    <label for="input3">orange</label>
    <input type="checkbox" name="foods" id="input3" value="orange">
  </div>
  <div>
    <label for="input4">egg</label>
    <input type="checkbox" name="foods" id="input4" value="egg">
  </div>
  <div>
    <label for="input5">tomato</label>
    <input type="checkbox" name="foods" id="input5" value="tomato">
  </div>
  <button>submit</button>
</form>
</body>
</html>
