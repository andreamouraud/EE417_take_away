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
    <h1 onclick="location.href='${contextPath}/';">Online Take-Away System</h1>
  </header>

  <div id="list">
    <ul>
      <c:forEach items="${restaurantList}" var="restaurant">
        <li onclick="location.href='${contextPath}/restaurant?id=${restaurant.id}';">
            <strong>${restaurant.name}</strong>
            (${restaurant.location})<br>${restaurant.phoneNumber}
            <hr>
                ${restaurant.description}
        </li>
      </c:forEach>
    </ul>
  </div>
  <c:if test="${empty restaurantList}">
    <div class="box">
        <h4>No restaurant yet, come back later !</h4>
    </div>
  </c:if>
</div>

<footer class="footer">Online Take-Away System | Andrea Mouraud<br>
  <a href="${contextPath}/professional" target="_blank">Professional access</a>
</footer>

</body>
</html>