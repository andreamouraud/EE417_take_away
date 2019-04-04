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
    <h1 onclick="location.href='${contextPath}/application';">Online Take-Away System</h1>
  </header>
  <h2>Confirming your order of ${menu.name} to ${restaurant.name} !</h2>

  <div class="box">
    Let us know your name :
    <form method="POST" action="${contextPath}/application/order?restaurant=${restaurant.id}&menu=${menu.id}" name="form">
      <input type="text" name="customerField" placeholder="Name"/>
      <input type="submit" value="Order" />
    </form>
  </div>
</div>
  <footer class="footer">Online Take-Away System | Andrea Mouraud<br>
    <a href="${contextPath}/application/professional" target="_blank">Professional access</a>
  </footer>
</body>
</html>