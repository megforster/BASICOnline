<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/30/19
  Time: 8:47 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create New Account</title>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/>
</head>

<body>
 <p><h4>Enter your information into the fields below and press create!</h4></p>
    <g:form controller="account" action="create">
    <label>First Name: </label>
    <g:textField name="firstName"/><br/>
    <label>Last Name: </label>
    <g:textField name="lastName"/><br/>
    <label>Email Address: </label>
    <g:textField name="emailAddress"/><br/>
    <label>Password: </label>
    <g:passwordField name="password"/><br/><br>
        <g:actionSubmit value="create"/>
</g:form>
<g:link action="goToLandingPage">
    <input type="button" value="Home" class="button"/>
</g:link>




</body>
</html>