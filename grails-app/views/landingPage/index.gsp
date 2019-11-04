<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/30/19
  Time: 8:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome to BASIC Online!</title>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/>
</head>

<body>
    <p><h4>If you would like to save your progress, please <a href="${g.createLink(controller : 'account', action : 'newUser',params : [])}">create an account</a> or <a href="${g.createLink(controller : 'account', action : 'logIn',params : [])}">log in</a>!</h4></p>
</body>
</html>