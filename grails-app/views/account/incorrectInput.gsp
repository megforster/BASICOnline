<%--
  Created by IntelliJ IDEA.
  User: Reeda Hanif
  Date: 3/30/2020
  Time: 5:18 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Incorrect Login</title>  <%--Changes browser tab text--%>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/> <%--Changes browser tab icon--%>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'incorrectInput.css')}" type="text/css">
</head>

<body>

<div class = "form">
    <form>
    <h4>You entered the incorrect email or password.</h4>

    <div class = "input-box">
        <g:link action="Log In">
            <input type="button" value = "Try Again" class = "button"/>
        </g:link>
    </div>
</form>

</div>
</body>
</html>