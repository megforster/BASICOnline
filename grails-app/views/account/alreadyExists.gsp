<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/31/19
  Time: 7:56 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Existing Account</title>  <%--Changes browser tab text--%>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/> <%--Changes browser tab icon--%>
</head>
<p><h4>An account with that email address already exists!</h4></p>
<body>

<%--Create a button--%>
<g:link action="logIn"> <%--Action pressing the button will perform, since this view is in the account folder and the
                        action is from the account controller you do not have to specify a controller--%>
    <input type="button" value="Log In!" class="button"/> <%--what makes it a button--%>
</g:link>

<%--Button to send users back to the initial landing --%>
<g:link action="goToLandingPage"> <%--Will be changed latter--%>
    <input type="button" value="Home" class="button"/> <%--What makes it a button--%>
</g:link>
</body>
</html>