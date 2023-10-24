<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-24
  Time: 오전 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>
<body>
<h1>View Customer Info</h1>
    <div>
        <input type="text" name="id" placeholder="Enter Id">
    </div>
    <div>
        <button onclick="ajax14()">VIEW</button>
        <script>
            function ajax14() {
                axios.get("/main36/sub2", {params: {id: 5}})
            }
        </script>
    </div>
<hr>
<h1>View Employee Info</h1>
    <div>
        <input type="text" id="id2" placeholder="Enter id">
    </div>
<div>
    <button onclick="ajax15()">VIEW</button>
    <script>
        function ajax15() {
            const id2 = document.getElementById("#id2").value
            axios.get("/main36/sub3", {params: {id: id2}})
        }
    </script>
</div>
<div>
    <button onclick="ajax16()">ADD data</button>
    <script>
        function ajax16() {
            axios.post("/main36/sub4", {
            lastName: "손",
            firstName: "흥민",
            birthDate: "2020-02-02"
            }, {
            headers: {
            "content-type": "application/x-www-form-urlencoded"
            }
            })
        }
    </script>
</div>
</body>
</html>
