<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-25
  Time: 오후 12:16
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
                axios.get("/main39/sub1")
                    .then(() => console.log("sucess"))
                    .catch(() => console.log("failure"));
            }
        </script>
    </div>
    <div>
        <button onclick="ajax2()">button2</button>
        <script>
            function ajax2() {
                axios.get("/main39/sub2")
                    .then(() => console.log("sucess"))
                    .catch(() => console.log("fail"));
            }
        </script>
    </div>
    <div>
        <button onclick="ajax3()">button3</button>
        <script>
            function ajax3() {
                axios.get("/main39/sub2")
                    .catch(function (error) {
                        console.log(error);
                        console.log(error.response.status);
                        let status = error.response.status;
                        if(status >= 400 && status < 500) {
                            console.log("Wrong Request");
                        } else if(status >= 500 && status < 599) {
                            console.log("Server Error");
                        }
                    });
            }
        </script>
    </div>
    <div>
        <button onclick="ajax4()">button4</button>
        <p id="result1"></p>
        <script>
            function ajax4() {
                axios.get("/main39/sub3")
                    .catch((error) => {
                        console.log(error);
                        let status = error.response.status;
                        let message = "";
                        if(status > 399 && status < 500) {
                            message = "Wrong Request";
                        } else if (status > 499 && status < 600) {
                            message = "Server Error";
                        }
                        document.querySelector("#result1").textContent = message;
                    })
            }
        </script>
    </div>
    <div>
        <input type="text" id="input1" placeholder="Enter Id">
        <button onclick="ajax5()">button5</button>
        <script>
            function ajax5() {
                const pid = document.getElementById("input1").value;
                axios.get("/main39/sub4?id=" + pid)
                    .then(response => response.data)
                    .then(data => console.log(data))
                    .catch(error => console.log(error));
            }
        </script>
    </div>
    <div>
        <button onclick="ajax6()">button6</button>
        <script>
            function ajax6() {
                axios.get("/main39/sub5")
                    .then(() => console.log("Sucess"))
                    .catch(() => console.log("Fail"))
                    .finally(() => console.log("Finished"));
            }
        </script>
    </div>
    <hr>
    <h2>Add Employee</h2>
    <div>
        <p id="result2"></p>
        <div>
            <input type="text" id="firstNameInput" placeholder="first Name">
        </div>
        <div>
            <input type="text" id="lastNameInput" placeholder="last name">
        </div>
        <div>
            <input type="date" id="birthInput">
        </div>
        <div>
            <textarea name="" id="notesTextArea" cols="30" rows="10" placeholder="notes"></textarea>
        </div>
        <div>
            <button onclick="ajax7AddEmployee()" id="button1">Submit</button>
        </div>
    </div>
    <script>
        function ajax7AddEmployee() {
            const button1 = document.getElementById("button1");
            button1.setAttribute("disabled", "disabled"); //prevent double click leading to multiple same data
            const lastName = document.getElementById("lastNameInput").value;
            const firstName = document.getElementById("firstNameInput").value;
            const birthDate = document.getElementById("birthInput").value;
            const notes = document.getElementById("notesTextArea").value;

            axios.post("/main39/sub6", {
                lastName, firstName, birthDate, notes
            })
                .then(() => {
                    document.getElementById("result2").textContent = "Sucessfully Added";
                })
                .catch((error) => {
                    const code = error.response.status;
                    if(code => 400 && code < 500) {
                        document.getElementById("result2").textContent = "Wrong Input";
                    } else if (code >=500) {
                        document.getElementById("result2").textContent = "Server Error";
                    }
                })
                .finally(() => {
                    button1.removeAttribute("disabled");
                })
        }
    </script>
</body>
</html>
