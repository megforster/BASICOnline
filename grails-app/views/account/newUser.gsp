<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/30/19
  Time: 8:47 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create New Account</title> <%--Changes browser tab text--%>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/> <%--Changes browser tab icon--%>
</head>

<body>
 <p><h4>Enter your information into the fields below and press create!</h4></p>
    <g:form controller="account" action="create">  <%--Form tag, associates the form with a controller and an action--%>
    <label>First Name: </label> <%--Label form field--%>
    <g:textField name="firstName"/><br/><%--Associates what is typed into the form field with a key--%>
    <label>Last Name: </label> <%--Label form field--%>
    <g:textField name="lastName"/><br/><%--Associates what is typed into the form field with a key--%>
    <label>Email Address: </label> <%--Label form field--%>
    <g:textField name="emailAddress"/><br/><%--Associates what is typed into the form field with a key--%>
    <label>Password: </label> <%--Label form field--%>
    <%--Password fields don't show exactly what key is typed, just dots for each key typed--%>
        <g:passwordField name="password"/><br/><br><%--Associates what is typed into the form field with a key--%>
        <g:actionSubmit value="create"/><%--Creates a submit button and sends
                                        the parameters listed to the "creation" action the form is associated with--%>
</g:form>

<%--Button to send users back to the initial landing --%>
<g:link action="goToLandingPage"><%--Will be changed latter--%>
    <input type="button" value="Home" class="button"/> <%--What makes it a button--%>
</g:link>




</body>
</html>