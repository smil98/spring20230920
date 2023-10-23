<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-23
  Time: 오후 2:43
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
                axios.request({
                    //https://axios-http.com/docs/req_config
                    url:"/main35/sub2"
                });
            }
        </script>
    </div>
    <div>
        <button onclick="ajax2()">button2</button>
        <script>
            function ajax2() {
                axios.request({
                    url:"/main35/sub3?address=seoul"
                });
            }
        </script>
    </div>
    <div>
        <button onclick="ajax3()">button3</button>
        <script>
            function ajax3() {
                axios.request({
                    url:"/main35/sub4",
                    params : {
                        address:"seoul",
                        name: "son",
                        age: 33,
                        email: "abc@naver.com"
                    }
                });
            }
        </script>
    </div>
    <div>
        <button onclick="ajax4()">button4</button>
        <script>
            function ajax4() {
                axios.request({
                    url: "/main35/sub5",
                    params : {
                        city: "seoul",
                        id: 1,
                        score : 95.00,
                        country : "Korea"
                    }
                });
            }
        </script>
    </div>
    <div>
        <div>
            <input type="text" id="input1" value="seoul">
        </div>
        <div>
            <input type="text" id="input2" value="33">
        </div>
        <div>
            <input type="text" id="input3" value="88.7">
        </div>
        <div>
            <input type="text" id="input4" value="korea">
        </div>
        <div>
            <button onclick="ajax5()">button5</button>
            <script>
                function ajax5() {
                    const city = document.querySelector("#input1").value;
                    const id = document.querySelector("#input2").value;
                    const score = document.querySelector("#input3").value;
                    const country = document.querySelector("#input4").value;
                    axios.request({
                        url: "/main35/sub5",
                        params : {
                            city: city,
                            id: id,
                            score : score,
                            country: country
                        }
                    })
                }
            </script>
        </div>
    </div>

    <div>
        <div>
            <input type="text" id="input5" placeholder="address">
        </div>
        <div>
            <input type="text" id="input6" placeholder="name">
        </div>
        <div>
            <input type="text" id="input7" placeholder="age">
        </div>
        <div>
            <input type="text" id="input8" placeholder="email">
        </div>
        <div>
            <button onclick="ajax6()">button6</button>
            <script>
                function ajax6() {
                    const address = document.querySelector("#input5").value;
                    const name = document.querySelector("#input6").value;
                    const age = document.querySelector("#input7").value;
                    const email = document.querySelector("#input8").value;
                    axios.request({
                        url:"/main35/sub4",
                        params : {
                            address,
                            name,
                            age,
                            email
                            //if param name and const name are the same can omit
                        }
                    })
                }
            </script>
        </div>
    </div>
    <div>
        <button onclick="ajax7()">button7</button>
        <script>
            function ajax7() {
                axios.request({
                    url: "/main35/sub6",
                    params: {
                        pk: 9,
                        lastName: "son",
                        firstName: "heungMin"
                    }
                })
            }
        </script>
    </div>
    <div>
        <button onclick="ajax8()">button8</button>
        <script>
            function ajax8() {
                axios.request({
                    url:"/main35/sub7",
                    method:"post",
                })
            }
        </script>
    </div>
    <div>
        <button onclick="ajax9()">button9</button>
        <script>
            function ajax9() {
                axios.post("/main35/sub7");
            }
        </script>
    </div>
    <div>
        <button onclick="ajax10()">button10</button>
        <script>
            function ajax10() {
                axios.post("/main35/sub8", {
                    city: "seoul",
                    country: "korea"
                }, {
                    headers: {
                        "content-type": "application/x-www-form-urlencoded"
                    }
                });
            }
        </script>
    </div>
    <div>
        <div>
            <input type="text" id="input9" placeholder="pk">
        </div>
        <div>
            <input type="text" id="input10" placeholder="lastName">
        </div>
        <div>
            <input type="text" id="input11" placeholder="firstName">
        </div>
        <div>
            <button onclick="ajax11()">button11</button>
            <script>
                function ajax11() {
                    const pk = document.querySelector("#input9").value;
                    const lastName = document.querySelector("#input10").value;
                    const firstName = document.querySelector("#input11").value;
                    axios.post("/main35/sub9", {
                        pk,
                        firstName,
                        lastName
                    }, {
                        headers: {
                            "content-type": "application/x-www-form-urlencoded"
                        }
                    });
                }
            </script>
        </div>
    </div>
    <div>
        <div>
            <input type="text" id="input12" value="LeekangIn">
        </div>
        <div>
            <input type="file" id="input13" multiple accept="image/*">
        </div>
        <div>
            <button onclick="ajax12()">button12</button>
            <script>
                function ajax12() {
                    axios.postForm("/main35/sub10", {
                       name: document.querySelector("#input12").value,
                       files: document.querySelector("#input13").files
                    });
                }
            </script>
        </div>
    </div>
</body>
</html>
