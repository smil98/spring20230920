<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오후 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<!-- get parameter age and create two p element that displays whether that age has vote-rights
 allowed to vote : 20 and above -->
<h1>Can I vote?</h1>
<h2>Entered Age: ${param.age}</h2>
<c:if test="${not empty param.age}">
    <c:if test="${param.age ge 20}" var="isAge">
        <p>투표 가능합니다.</p>
    </c:if>
    <c:if test="${not isAge}">
        <p>투표 불가능합니다.</p>
    </c:if>
</c:if>
<c:if test="${empty param.age}">
    <p>나이를 입력해주세요.</p>
</c:if>
<p></p>
</body>
</html>
