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
<h2>Welcome to ${restaurant.name} ! Choose your meal </h2>
<ul >
  <c:forEach items="${restaurant.menu}" var="menu">
    <li onclick="location.href='${contextPath}/order?id=${menu.id}';">
      <strong>${menu.name}</strong>
      (€${menu.price})
      <hr>
        ${menu.description}
    </li>
  </c:forEach>
</ul>
  <c:if test="${empty restaurant.menu}">
    <div class="box">
      <h4>No meal in this restaurant yet, come back later !</h4>
    </div>
  </c:if>
</div>
  <footer class="footer">Online Take-Away System | Andrea Mouraud<br>
    <a href="${contextPath}/professional" target="_blank">Professional access</a>
  </footer>
</body>
</html>