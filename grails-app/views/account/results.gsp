<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 11/9/19
  Time: 12:28 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Placement Exam Results</title><%--Changes browser tab text--%>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/> <%--Changes browser tab icon--%>
</head>

<body>
<%--Page header--%>
<p><h4>Congratulations on completing your placement exam!</h4></p>
<p>Your placement level is ${usr.placementLevel}</p> <%--Pulls user's placement level from their account--%>

<%--Button that brings the user from the results page to their workflow page--%>
<g:link controller = "Account" action="workflows" params ="${[emailAddress: usr.emailAddress, password: usr.password]}">
    <input type="button" value="Enter workflows" class="button"/> <%--What makes it a button--%>
</g:link>
</body>
</html>