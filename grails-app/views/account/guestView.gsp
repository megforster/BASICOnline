<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 11/5/19
  Time: 2:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Guest Account</title>
</head>
<p><h4>Welcome Guest!</h4></p>
<p>As a reminder, signing in as a guest will not save any of your progress. Quitting and coming back will result in you starting over.</p>
<p><a href="${g.createLink(controller : 'account', action : 'guestUsr',params : [])}">Continue</a> to proceed as a guest or <a href="${g.createLink(controller : 'account', action : 'newUser',params : [])}">create an account</a> to save your progress</p>
<body>

</body>
</html>