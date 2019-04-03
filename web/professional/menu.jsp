<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: mourau_a
  Date: 16/02/2019
  Time: 12:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order</title>
    <link rel="stylesheet" href="${contextPath}/style/style.css">
</head>
<body>
<div class="page-container">
    <header class="header">
        <h1 onclick="location.href='${contextPath}/professional';">Online Take-Away System<br>Professional</h1>
    </header>
    <div class="title">${menu.name}</div>

    <div class="box">
        <h1>Description</h1>
        <hr>
        ${menu.description}
        <h1 style="margin-top: 20px;">Price</h1>
        <hr>
        €${menu.price}
    </div>
</div>
</body>
</html>
