<html>
<head>
    <title>Order</title>
    <link rel="stylesheet" href="${contextPath}/style/style.css">
</head>
<body>
<div class="page-container">
    <header class="header">
        <h1 onclick="location.href='${contextPath}/professional';">Online Take-Away System<br>Professional</h1>
    </header>
<div class="box">
    <h4>Create your restaurant</h4>
    <hr>
    <form method="POST" action="${contextPath}/professional/restaurant" name="form">
        <input type="text" name="nameField" placeholder="Name"/>
        <input type="text" name="locationField" placeholder="Location"/>
        <input type="text" name="descriptionField" placeholder="Description"/>
        <input type="text" name="phoneNumberFieldField" placeholder="Location"/>
        <input type="submit" value="CREATE" />
    </form>
    <hr>
        <a style="color: dodgerblue;" href="${contextPath}/professional"> CANCEL</a>
</div>
</div>
<footer class="footer">Online Take-Away System | Andrea Mouraud<br>
    <a href="${contextPath}/professional/logout">Logout</a>
</footer>
</body>
</html>