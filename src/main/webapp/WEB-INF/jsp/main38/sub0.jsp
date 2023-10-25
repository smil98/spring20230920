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
<div>
    <button onclick="ajax6()">button6</button>
    <script>
        function ajax6() {
            axios.get("/main38/sub2")
                .then(function() {
                    console.log("process after execution");
                });
        }
    </script>
</div>
<div>
    <button onclick="ajax7()">button7</button>
    <script>
        function ajax7() {
            axios.get("/main38/sub2")
                .then(function () {
                    console.log('first function')
                    return "abcd";
                })
                .then(function (param) {
                    console.log('second function')
                    console.log(param)
                    return 345;
                })
                .then(function (param) {
                    console.log(param)
                })
        }
    </script>
</div>
<div>
    <button onclick="ajax8()">button8</button>
    <script>
        function ajax8() {
            axios.get("/main38/sub2")
                .then(function (param) {
                    console.log("first function executed")
                    return param.data;
                })
                .then(function (param) {
                    console.log("second function executed")
                    console.log(param)
                })
        }
    </script>
</div>
<div>
    <button onclick="ajax9()">button9</button>
    <script>
        function ajax9() {
            axios.get("/main38/sub2")
                .then(response => response.data)
                .then(data => console.log(data));
        }
    </script>
</div>
<div>
    <button onclick="ajax10()">button10</button>
    <script>
        function ajax10() {
            axios.get("/main38/sub4")
                .then(response => response.data)
                .then(data => console.log(data.list[1]));
        }
    </script>
</div>
<div>
    <button onclick="ajax11()">button11</button>
    <script>
        function ajax11() {
            axios.get("/main38/sub4")
                .then(response => response.data)
                .then(({price, birth, list, city}) => console.log(price));
        }
    </script>
</div>
<div>
    <button onclick="ajax12()">button12</button>
    <script>
        function ajax12() {
            axios.get("/main38/sub4")
                .then(({data}) => console.log(data.price))
        }
    </script>
</div>
<div>
    <button onclick="ajax13()">button13</button>
    <script>
        function ajax13() {
            axios.get("/main38/sub4")
                .then(response => response.data)
                .then(({price, city, country="korea"}) => {
                    console.log(price);
                    console.log(city);
                    console.log(country);
                })
        }
    </script>
</div>
<script>
    // Destructuring assignment
    let a = {
        name: "son",
        age: 30
    };

    console.log(a.name);
    console.log(a.age);

    let myName = a.name;
    let myAge = a.age;

    console.log(myName);
    console.log(myAge);

    let {name, age} = a; // destructuring assignment
    console.log(name); // son
    console.log(age); // 30

    let b = {
        city: "seoul",
        country: "korea"
    };

    // console.log(b.city);
    // console.log(b.country);

    let {city, country} = b; // destructuring assignment
    console.log(city);
    console.log(country);

    let c = {
        email : "abc@gmail.com",
        price : 20.00
    };
    let {email} = c;

    let d = {
        name: "lee",
        address: "paris",
        age : 77
    };
    let {name, address} = d;

    let {city2, country2, category} = e; //category remains as undefined
    console.log(city2);
    console.log(country2);
    console.log(category);

    let f = {
        name3 : "kim",
        city3: "busan"
    };

    let {name3, city3, address3="sicheon"} = f; //setting default value for undefined
    console.log(name3);
    console.log(city3);
    console.log(address3);

    let g = [30, 40, 50];

    let [h, i, j] = g; // destructuring assignment
    console.log(h);
    console.log(i);
    console.log(j);

    let [k, l] = g;
    console.log(k);
    console.log(l);

    let [m, ...n] = g;
    console.log(m);
    console.log(n);

    let[...o] = g;
    console.log(o)
    //then works when sucessful
    //catch works when unsucessful
    //finally always work
</script>
</body>
</html>
