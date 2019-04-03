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
        <input type="submit" value="CREATE" />
    </form>
    <hr>
        <a style="color: dodgerblue;" href="${contextPath}/professional"> CANCEL</a>
</div>
</div>
</body>
</html>