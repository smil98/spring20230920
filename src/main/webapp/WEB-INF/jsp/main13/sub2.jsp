<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-26
  Time: 오전 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Practice Input</title>
</head>
<body>
<form action="/main13/sub3">
    <div>
        <label for="input1">Lorem.</label>
        <input type="text" name="param1" id="input1">
    </div>
    <div>
        <label for="input2">Labore!</label>
        <input type="number" name="param2" id="input2">
    </div>
    <div>
        <label for="input3">Atque!</label>
        <input type="password" name="param3" id="input3">
    </div>
    <div>
        <label for="input4">Quaerat.</label>
        <input type="date" name="param4" id="input4">
    </div>
    <div>
        <label for="input5">Libero?</label>
        <input type="datetime-local" name="param5" id="input5">
    </div>
    <div>
        <label for="input6">Quae.</label>
        <input type="radio" name="param6" value="accept" id="input6" checked>
    </div>
    <div>
        <label for="input7">Illum.</label>
        <input type="radio" name="param6" value="decline" id="input7">
    </div>
    <div>
        <label for="input8">Officia.</label>
        <input type="checkbox" name="param7" value="pizza" id="input8">
    </div>
    <div>
        <label for="input9">Numquam!</label>
        <input type="checkbox" name="param7" value="melon" id="input9">
    </div>
    <div>
        <label for="input10">Aliquam?</label>
        <input type="checkbox" name="param7" value="coffee" id="input10">
    </div>
    <button>submit</button>
</form>
</body>
</html>
