<%--
  Created by IntelliJ IDEA.
  User: seungmi01pd2017
  Date: 2023/09/27
  Time: 10:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>\${modelAttr1} : ${modelAttr1}</h1>
  <h1>\${sessionAttr1} : ${sessionAttr1}</h1>
<%--  el fetches attribute from the narrow area--%>
<%--  page< request(model) < session < application--%>
  <h1>\${attr1} : ${attr1}</h1>
  <h1>\${sessionScope.attr1} : ${sessionScope.attr1}</h1>
</body>
</html>
