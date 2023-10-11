<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-11
  Time: 오전 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Changing Delivery Service</title>
</head>
<body>
<h1>Chaning Delievery Company</h1>
<form action="" method="post">
    <div>
        ID
        <input type="number" name="id" value = "${shipper.shipperId}">
    </div>
    <div>
        Name
        <input type="text" name="name" value = "${shipper.shipperName}">
    </div>
    <div>
        Phone
        <input type="text" name="phone" value = "${shipper.phone}">
    </div>
    <div>
        <button>EDIT</button>
    </div>
</form>
</body>
</html>
