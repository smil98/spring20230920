<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-24
  Time: 오후 4:12
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
<div>
    <button onclick="ajax1()">button1</button>
    <script>
        function ajax1() {
            axios.get("/main38/sub1");
        }
    </script>
</div>
<div>
    <button onclick="ajax2()">button2</button>
    <script>
        function ajax2() {
            axios.get("/main38/sub2")
                .then(function() {
                    console.log("Method After Response");
                });
        }
    </script>
</div>
<div>
    <button onclick="ajax3()">button3</button>
    <script>
        function ajax3() {
            axios.get("/main38/sub3")
                .then(function(response) {
                    console.log(response.data);
                    console.log(response.data.age);
                    console.log(response.data.name);
                });
        }
    </script>
</div>
<div>
    <button onclick="ajax4()">button4</button>
    <script>
        function ajax4() {
            axios.get("/main38/sub4")
                .then(function(response) {
                   console.log(response.data.city);
                   console.log(response.data.price);
                   console.log(response.data.list[0]);
                   console.log(response.data.birth);
                });
        }
    </script>
</div>
<div>
    <input type="text" id="input1" value="10">
    <button onclick="ajax5()">button5</button>
    <script>
        function ajax5() {
            const id = document.querySelector("#input1").value;
            axios.get("/main38/sub5?id="+id)
                .then(function(response) {
                    const product = response.data;
                    console.log(product.ProductID);
                    console.log(product.ProductName);
                    console.log(product.Unit);
                    console.log(product.Price);
                })
        }
    </script>
</div>
</body>
</html>
