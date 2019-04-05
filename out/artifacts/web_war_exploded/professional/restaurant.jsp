<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
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
    <title>Professional</title>
    <link rel="stylesheet" href="${contextPath}/style/style.css">
</head>
<body>
<div class="page-container">
    <header class="header">
        <h1 onclick="location.href='${contextPath}/application/professional';">Online Take-Away System<br>Professional</h1>
    </header>
<div class="title">${restaurant.name}</div>

    <div id="list">
        <ul>
            <c:forEach items="${menuList}" var="menu">
                <li onclick="location.href='${contextPath}/application/professional/menu?id=${menu.id}';">
                    <strong>${menu.name}</strong>
                    (€${menu.price})
                    <hr>
                        ${menu.description}
                </li>
            </c:forEach>
            <c:if test="${not empty menuList}">
                <li style="text-align: center;color:dodgerblue;" onclick="location.href='${contextPath}/application/professional/createMenu?restaurant=${restaurant.id}';" >CREATE ANOTHER MENU</li>
            </c:if>
        </ul>
    </div>
<c:if test="${empty menuList}">
    <div class="box">
        <h4>No menu yet !</h4>
        <a href="${contextPath}/application/professional/createMenu?restaurant=${restaurant.id}" class="button">CREATE ONE</a>
    </div>
</c:if>
    <div class="title">Last orders</div>

    <div id="list">
        <ul>
            <c:forEach items="${orderList}" var="order">
                <li>
                    Order by <strong>${order.customer}</strong><br>
                    at <strong> ${order.time}</strong>
                    <hr>
                        <c:forEach items="${menuList}" var="item">
                            <c:if test="${item.id eq order.menu}">
                                <strong>${item.name}</strong> for <strong>€${item.price}</strong>
                            </c:if>
                        </c:forEach>
                </li>
            </c:forEach>
        </ul>
    </div>

</div>
<footer class="footer">Online Take-Away System | Andrea Mouraud<br>
    <a href="${contextPath}/application/professional/logout">Logout</a>
</footer>
</body>
</html>
