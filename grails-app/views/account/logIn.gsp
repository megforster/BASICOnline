<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/30/19
  Time: 8:47 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome Back!</title>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/>
</head>

<body>
<p><h4>Below users will be able to log in</h4></p>
<g:form controller="account" action="submit">
    <label>Email Address: </label>
    <g:textField name="emailAddress"/><br/>
    <label>Password: </label>
    <g:passwordField name="password" value="${password}"/><br/>
    <g:actionSubmit value="submit" params="${[emailAddress:emailAddress,password:password]}"/>
</g:form>

<g:link action="goToLandingPage">
    <input type="button" value="Home" class="button"/>
</g:link>

</body>
</html>