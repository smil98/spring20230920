<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오후 3:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Relative Path Practice</title>
</head>
<body>
<h3>Relative Path .. is one path above</h3>
<h4>.. goes to ~/csub2</h4>
<form action="..">
    <input type="text" name="age">
    <button>submit</button>
</form>
<hr>
<h4>../.. goes to ~/bsub2</h4>
<form action="../..">
    <input type="text" name="email">
    <button>submit</button>
</form>
<hr>
<form action="../dsub3">
    <button>submit</button>
</form>
<hr>
<form action="../../csub3">
    <button>전송</button>
</form>
<hr>
<%-- http://localhost:8080/main12/asub2/bsub2/csub2/dsub2/esub2 --%>
<%-- http://localhost:8080/main12/asub2/bsub2/bsub3? --%>
<form action="../../csub3/../bsub3">
    <button>전송</button>
</form>
</body>
</html>
