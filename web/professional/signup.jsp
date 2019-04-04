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
    <h4>Sign up with your email address</h4>
    <hr>
    <form method="POST" action="${contextPath}/application/professional/signup" name="form">
        <input type="text" name="emailField" placeholder="Email address"/>
        <input type="password" name="passwordField" placeholder="Password"/>
        <input type="password" name="passwordConfirmField" placeholder="Confirm password"/>
        <input type="text" name="firstNameField" placeholder="Firstname"/>
        <input type="text" name="surNameField" placeholder="Surname"/>
        <input type="radio" name="genderField" value="1" checked>Male
        <input type="radio" name="genderField" value="2">Female
        <input type="submit" value="SIGN UP" />
    </form>
    <hr>
    <h4>Already have an account?
        <a style="color: dodgerblue;" href="${contextPath}/application/professional"> Log in</a>
    </h4>
</div>
</div>
</body>
</html>