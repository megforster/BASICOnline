<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/30/19
  Time: 8:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome to BASIC Online!</title><%--Changes browser tab text--%>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/><%--Changes browser tab icon--%>
</head>

<body>
<%--The <a></a> tags here create links to a specific action, since the actions it lists are not in the same controller as the view you have to specify the controller too. The text between the tags is the text of the label--%>
    <p><h4>If you would like to save your progress, please <a href="${g.createLink(controller : 'account', action : 'newUser',params : [])}">create an account</a> or <a href="${g.createLink(controller : 'account', action : 'logIn',params : [])}">log in</a>!</h4></p>
</body>
</html>