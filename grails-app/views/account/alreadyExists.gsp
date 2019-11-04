<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/31/19
  Time: 7:56 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Existing Account</title>
</head>
<p><h4>An account with that email address already exists!</h4></p>
<body>
<g:link action="logIn">
    <input type="button" value="Log In!" class="button"/>
</g:link>
<g:link action="goToLandingPage">
    <input type="button" value="Home" class="button"/>
</g:link>
</body>
</html>