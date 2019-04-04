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

    <div class="box">
        <h4>To continue, please login</h4>
        <hr>
        <form method="POST" action="${contextPath}/application/professional/login" name="myform">
            <input type="text" name="emailField" placeholder="Email address"/>
            <input type="password" name="passwordField" placeholder="Password"/>
            <input type="submit" value="LOG IN" />

        </form>
        <hr>
        <h4>Don't have an account?</h4>
        <a href="${contextPath}/application/professional/signup" class="button"> SIGN UP HERE</a>
    </div>
</body>
</html>