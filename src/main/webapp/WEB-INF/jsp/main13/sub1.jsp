<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-26
  Time: 오전 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Input Types</title>
</head>
<body>
<form action="/main13/sub2">
    <div>
        <input type="text" name="param1">
    </div>
    <div>
        <input type="password" name="param2">
    </div>
    <div>
        <input type="date" name="param3">
    </div>
    <div>
        <input type="button" name="param4" value="random">
    </div>
    <div>
        <input type="number" name="param5">
<%--        can change the increment / decrement--%>
    </div>
    <div>
        <input type="submit" name="param6" value="sign in">
    </div>
    <div>
        <input type="radio" name="param7">
        <input type="radio" name="param7">
<%--        allows to choose one from attribute that has same name--%>
    </div>
    <div>
        <input type="checkbox" name="param8">
        <input type="checkbox" name="param8">
        <input type="checkbox" name="param8">
<%--        can choose multiple--%>
    </div>
    <div>
        <input type="hidden" name="param9" value="default">
<%--        not shown, used to send additional info to the server--%>
    </div>
    <button>Send</button>
</form>
<hr>
<form action="/main13/sub2">
    <div>
        <input type="text" name="param1" value="son">
    </div>
    <div>
        <input type="text" name="param1" placeholder="enter name">
    </div>
    <div>
<%--        limits the input length--%>
        <input type="text" maxlength="5">
    </div>
    <div>
<%--        must be included--%>
        <input type="text" required>
    </div>
    <div>
<%--        readonly--%>
        <input type="text" readonly value="son">
    </div>
    <div>
<%--        similar to readonly, but disabled is not sent to the server whereas readonly does--%>
        <input type="text" name="param4" value="son" disabled>
    </div>
    <div>
<%--        must write three numbers--%>
        <input type="text" pattern="\d{3}" name="param5">
    </div>
    <div>
<%--        want checkbox to be checked when loading--%>
        <input type="checkbox" name="param6" checked>
    </div>
    <div>
        <input type="radio" name="param7" checked>
    </div>
    <div>
<%--        allows file attachments, default =1 file, mutiple--%>
        <input type="file" multiple>
    </div>
</form>
</body>
</html>
