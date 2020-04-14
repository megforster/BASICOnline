<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/30/19
  Time: 8:36 PM
--%>

%{--BASIC Online landing page--}%
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome to BASIC Online!</title>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/>

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'home.css')}" type="text/css">
</head>

<body>
<div class="form">

    <div class="newuser">
        <a href="${g.createLink(controller: 'account', action: 'newUser', params: [])}">
            <div class="input-box">
                <g:actionSubmit value="Create an Account"/>
            </div>
        </a>
    </div>

    <div class="login">
        <a href="${g.createLink(controller: 'account', action: 'logIn', params: [])}">
            <div class="input-box">
                <g:actionSubmit value="Login"/>
            </div>
        </a>
    </div>

    <div class="guest">
        <a href="${g.createLink(controller: 'account', action: 'guestView', params: [])}">
            <div class="input-box">
                <g:actionSubmit value="Login as Guest"/>
            </div>
        </a>
    </div>
</div>

<g:img dir="assets" file="BASICLogo.jpg"/>

</body>

</html>