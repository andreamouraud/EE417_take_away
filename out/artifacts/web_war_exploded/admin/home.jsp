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
    <title>Admin</title>
    <link rel="stylesheet" href="${contextPath}/style/style.css">
</head>
<body>
<div class="page-container">
    <header class="header">
        <h1>Online Take-Away System<br>Admin</h1>
    </header>
    <div class="title">Welcome Admin!</div>

    <div id="list">
        <ul>
            <li Reset database>
                <form action="" method="post">
                    <input class="button" type="submit" name="type" value="RESET DATABASE"/>
                </form>
            </li>
            <li Populate database>
            <form action="" method="post">
                <input class="button" type="submit" name="type" value="POPULATE DATABASE"/>
            </form>
        </li>
        </ul>
    </div>
</div>
</body>
</html>
