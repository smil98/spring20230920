<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오후 2:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Form</title>
</head>
<body>
<h1>Form</h1>
<form>
<h2>Name : identify input's param</h2>
    <input type="text" name="param1">
    <br>
    <input type="text" name="param2">
    <button>SUBMIT</button>
<%--    select(option), textarea--%>
<%--    identify which param the input is by name--%>
</form>
    <hr>
<h1>Practice</h1>
<h3>Create a form that sends ?name=lee&age=44&address=seoul&email=abc@gmail.com</h3>
<form>
    <input type="text" name="name" placeholder="Name"><br>
    <input type="text" name="age" placeholder="Age"><br>
    <input type="text" name="address" placeholder="Address"><br>
    <input type="text" name="email" placeholder="Email"><br>
    <button>SEND</button>
<%--    Notice that @ is converted to %40. This is url-encoding--%>
</form>
<hr>
<%--To inform where the query string goes = action--%>
<h2>Action : define where the query string is sent</h2>
<p>if there is no action property or null string is entered,
sends to current route</p>
<form action="https://www.google.com/search">
    <input type="text" name="q">
    <br>
    <button>SEND</button>
</form>
<hr>
<h1>Practice 2</h1>
<h3>create a form that links to search in Daum</h3>
<form action="https://search.daum.net/search">
    <input type="text" name="q">
    <br>
    <button>SEND</button>
</form>
<hr>
<h2>Action property: if it starts with /, path is set</h2>
<form action="/main12/sub2">
    <input type="text" name="email">
    <button>SEND</button>
</form>
<hr>
<h1>Practice 3</h1>
<h3>if submit button is clicked create a form that sends request parameter to main12/sub2</h3>
<form action="/main12/sub2">
    <input type="text" name="age">
    <button>Submit</button>
</form>
<hr>
<h1>Action property : if it isn't / or protocol(scheme), goes to current page's relative path </h1>
<form action="sub1">
    <input type="text" name ="email">
    <button>SUBMIT</button>
</form>
</body>
</html>
