<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/31/19
  Time: 7:56 PM
--%>
%{--Page that displays when the user attempts to create a new account with an email address already used--}%
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Existing Account</title>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/>

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'alreadyExists.css')}" type="text/css">
</head>

<body>
<h4>An account with that email address already exists!</h4>

<div class="form">

    <div class="input-box">
        <p>
            <g:link action="logIn">
                <input type="button" value="Login" class="button"/>
            </g:link>
        </p>

        <p>

            <g:link controller="landingPage" action="goToLandingPage">
                <input type="button" value="Home" class="button"/>
            </g:link>
        </p>

    </div>
</div>
</body>

<body>
<g:img dir="assets" file="BASICLogo.jpg"/>
</body>

</html>