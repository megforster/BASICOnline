<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/30/19
  Time: 8:47 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome Back!</title> <%--Changes browser tab text--%>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/> <%--Changes browser tab icon--%>
</head>

<body>
<p><h4>Log in below!</h4></p>
<g:form controller="account" action="submit"> <%--Form tag, associates the form with a controller and action--%>
    <label>Email Address: </label> <%--Label form field--%>
    <g:textField name="emailAddress"/><br/> <%--Associates what is typed into the form field with a key--%>
    <label>Password: </label>  <%--Label form field--%>
<%--Password fields don't show exactly what key is typed, just dots for each key typed--%>
    <g:passwordField name="password" value="${password}"/><br/> <%--Associates what is typed into the form field with a key --%>
<%--The submit button goes in the form block so it can send the information typed into the fields (its in the same scope as the info)--%>
    <g:actionSubmit value="Submit" params="${[emailAddress:emailAddress,password:password]}"/> <%--Creates a submit button and sends
                                                           the parameters listed to the "submit" action the form is associated with--%>
</g:form>

<%--Button to send users back to the initial landing --%>
<g:link action="goToLandingPage"> <%--Will be changed latter--%>
    <input type="button" value="Home" class="button"/> <%--What makes it a button--%>
</g:link>

</body>
</html>