<html>
<head>
    <title>Admin</title>
    <link rel="stylesheet" href="${contextPath}/style/style.css">
</head>
<body>
<div class="page-container">
    <header class="header">
        <h1 onclick="location.href='${contextPath}/admin';">Online Take-Away System<br>Admin</h1>
    </header>

    <div class="box">
        <h4>To continue, please login</h4>
        <hr>
        <form method="POST" action="${contextPath}/admin/login" name="myform">
            <input type="text" name="emailField" placeholder="Email address"/>
            <input type="password" name="passwordField" placeholder="Password"/>
            <input type="submit" value="LOG IN" />
        </form>
        <hr>
    </div>
</body>
</html>