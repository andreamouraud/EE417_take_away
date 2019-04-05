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
  <title>Home</title>
  <link rel="stylesheet" href="${contextPath}/style/style.css">
</head>
<body>
<div class="page-container">
    <div style="position: absolute;top: 50%;left: 50%;text-align: center;transform: translate(-50%, -50%);" id="list">
      <h1 class="title">Andrea Mouraud<br>18103154</h1>
      <hr>
      <ul>
        <li onclick="window.open('${contextPath}/application')";>
          <strong>Application</strong>
        </li>
        <li onclick="window.open('${contextPath}/report')">
        <strong>Report</strong>
      </li>
        <li onclick="window.open('https://andreamouraud.github.io/')">
        <strong>Javadoc</strong>
      </li>
      </ul>
    </div>
</div>

</body>
</html>