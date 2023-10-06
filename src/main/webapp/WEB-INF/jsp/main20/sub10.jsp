<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-05
  Time: 오후 4:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        select {
            border:1px solid black;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<h1>Suppliers by Country</h1>
<form action="/main20/sub11" id="form1">
    <button>View</button>
    <button type="button" id="addButton"> + </button> <!--Prevent button from submitting-->
    <br><br>
    <select name="country" class="select1">
        <c:forEach items="${countryList}" var="country">
            <option value="${country}">${country}</option>
        </c:forEach>
    </select>
</form>

<script>
    document.querySelector("#addButton").addEventListener("click", function() {
       const form = document.getElementById('form1');
       const selectElem = document.querySelector(".select1");

       const copyElem = selectElem.cloneNode(true);
       form.appendChild(copyElem);
       copyElem.before(document.createElement("br"));
    });
</script>
</body>
</html>
