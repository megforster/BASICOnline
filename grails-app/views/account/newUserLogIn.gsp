<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/31/19
  Time: 7:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Account Created</title> <%--Changes browser tab text--%>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/> <%--Changes browser tab icon--%>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'newuserwelcome.css')}" type="text/css">
</head>

<body>
<div class="form">
<p><h4>Welcome to BASIC Online</h4></p><%--Page header--%>

    <p>Your account has been created! Please use the button below to log into your new account.</p>

    <div class = "input-box">
        <g:link action="Log In"><%--Associates the button with the action pressing it will perform--%>
            <input type="button" value="Login" class="button"/> <%--What makes it a button--%>
        </g:link>
    <%--The submit button goes in the form block so it can send the information typed into the fields (its in the same scope as the info)--%>
    </div>

</div>

</body>
</html>