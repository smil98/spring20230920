<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오전 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
      li {
        font-weight: bold;
        font-size:1.3rem;
        color:blue;
      }
    </style>
</head>
<body>
<h1>Logical Operators</h1>
<p>Can also work with Strings</p>
<ul>
  <li> < (lt) </li>
  <p>${a} < ${b} = ${a < b}</p>
  <p>${a} < ${b} = ${a lt b}</p>
  <p>${c} < ${d} = ${c lt d}</p>
  <li> > (gt) </li>
  <p>${a} > ${b} = ${a > b}</p>
  <p>${a} > ${b} = ${a gt b}</p>
  <p>${c} > ${d} = ${c gt d}</p>
  <p>${e} > ${f} = ${e gt f}</p>
  <p>${e} > ${g} = ${e gt g}</p>
  <!-- try to keep same type -->
  <li> <= (le)</li>
  <p>${a} <= ${b} = ${a <= b}</p>
  <p>${a} <= ${b} = ${a le b}</p>
  <p>${c} <= ${d} = ${c le d}</p>
  <li> >= (ge) </li>
  <p>${a} >= ${b} = ${a >= b}</p>
  <p>${a} >= ${b} = ${a ge b}</p>
  <p>${c} >= ${d} = ${c ge d}</p>
  <li> == (eq)</li>
  <p>${a} == ${b} = ${a == b}</p>
  <p>${a} == ${b} = ${a eq b}</p>
  <p>${c} == ${d} = ${c eq d}</p>
  <li> != (ne)</li>
  <p>${a} != ${b} = ${a != b}</p>
  <p>${a} != ${b} = ${a ne b}</p>
  <p>${c} == ${d} = ${c ne d}</p>
</ul>
<ul><h2>EL Logical Operators 2</h2>
  <li>&& (and) </li>
  <p>\${true && true} : ${true && true}</p>
  <p>\${true && false} : ${true && false}</p>
  <p>\${false and true} : ${false and true}</p>
  <p>\${false and false} : ${false and false}</p>
  <li>|| (or) </li>
  <p>\${true || true} : ${true || true}</p>
  <p>\${true || false} : ${true || false}</p>
  <p>\${false or true} : ${false or true}</p>
  <p>\${false or false} : ${false or false}</p>
  <li>! (not)</li>
  <p>\${!true}</p>
  <p>\${!false}</p>
  <p>\${not true}</p>
  <p>\${not false}</p>
</ul>
</body>
</html>
