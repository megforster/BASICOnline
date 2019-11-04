<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/31/19
  Time: 7:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Account Created</title> <%--Changes browser tab text--%>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/> <%--Changes browser tab icon--%>
</head>

<body>
<p><h4>Your account has been created!</h4></p>

<%--Button to send users back to the log in page --%>
<g:link action="logIn"><%--Associates the button with the action pressing it will perform--%>
    <input type="button" value="Log In!" class="button"/> <%--What makes it a button--%>
</g:link>
</body>
</html>