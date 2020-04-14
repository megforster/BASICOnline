<%--
  Created by IntelliJ IDEA.
  User: Reeda Hanif
  Date: 3/30/2020
  Time: 5:18 PM
--%>

%{--Page displays when user enters incorrect log in information for an account or tries logging into an account that doesn't exist yet--}%
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Incorrect Login</title>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'incorrectInput.css')}" type="text/css">
</head>

<body>

<div class="form">
    <form>
        <h4>You entered the incorrect email or password.</h4>

        <div class="input-box">
            <g:link action="Log In">
                <input type="button" value="Try Again" class="button"/>
            </g:link>
        </div>
    </form>

</div>
</body>
</html>