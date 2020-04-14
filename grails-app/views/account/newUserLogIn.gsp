<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/31/19
  Time: 7:42 PM
--%>

%{--Page displayed when user successfully creates a new account--}%
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Account Created</title>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'newuserwelcome.css')}" type="text/css">
</head>

<body>
<div class="form">
    <p><h4>Welcome to BASIC Online</h4></p>

    <p>Your account has been created! Please use the button below to log into your new account.</p>

    <div class="input-box">
        <g:link action="Log In">
            <input type="button" value="Login" class="button"/>
        </g:link>
    </div>
</div>
</body>
</html>