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
    <title>Professional</title>
    <link rel="stylesheet" href="${contextPath}/style/style.css">
</head>
<body>
<div class="page-container">
    <header class="header">
        <h1 onclick="location.href='${contextPath}/application/professional';">Online Take-Away System<br>Professional</h1>
    </header>
    <div class="title">Welcome ${user.firstName} ${user.lastName}!</div>

    <div id="list">
        <ul>
            <c:forEach items="${restaurantList}" var="restaurant">
                <li onclick="location.href='${contextPath}/application/professional/restaurant?id=${restaurant.id}';">
                    <strong>${restaurant.name}</strong>
                    (${restaurant.location})<br>${restaurant.phoneNumber}<br>
                    <hr>
                        ${restaurant.description}
                </li>
            </c:forEach>
            <c:if test="${not empty restaurantList}">
                <li style="text-align: center;color:dodgerblue;" onclick="location.href='${contextPath}/application/professional/createRestaurant';" >CREATE ANOTHER RESTAURANT</li>
            </c:if>
        </ul>
    </div>
    <c:if test="${empty restaurantList}">
        <div class="box">
            <h4>You don't have any restaurant yet !</h4>
            <a href="${contextPath}/application/professional/createRestaurant" class="button">CREATE ONE</a>
        </div>
    </c:if>
</div>
<footer class="footer">Online Take-Away System | Andrea Mouraud<br>
    <a href="${contextPath}/application/professional/logout">Logout</a>
</footer>
</body>
</html>
