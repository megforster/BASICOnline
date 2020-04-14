<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 11/5/19
  Time: 2:42 PM
--%>

%{--Page displayed when user chooses to sign in as a guest--}%
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Guest Account</title>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/>

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'guestwelcome.css')}" type="text/css">

</head>

<div class="form">
    <forms>
        <p><h4>Welcome Guest!</h4></p>
        <p>

        <h3>As a reminder, signing in as a guest will not save any of your progress. Quitting and coming back will result in you starting over.</h3></p>

        <div class="newuser">
            <a href="${g.createLink(controller: 'account', action: 'newUser', params: [])}">
                <div class="input-box">
                    <g:actionSubmit value="Create an Account"/>
                </div>
            </a>
        </div>

        <div class="guestuser">
            <a href="${g.createLink(controller: 'account', action: 'guestUsr', params: [])}">
                <div class="input-box">
                    <g:actionSubmit value="Continue"/>
                </div>
            </a>

        </div>

    </forms>

</div>

<g:img dir="assets" file="BASICLogo.jpg"/>

<body>

</body>
</html>