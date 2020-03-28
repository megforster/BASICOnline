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
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/> <%--Changes browser tab icon--%>

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'home.css')}" type="text/css">
</head>

<body>
<%--The <a></a> tags here create links to a specific action, since the actions it lists are not in the same controller as the view you have to specify the controller too. The text between the tags is the text of the label--%>
<div class="form">

<div class="newuser">
    <a href="${g.createLink(controller : 'account', action : 'newUser',params : [])}">
        <div class = "input-box">
            <g:actionSubmit value="Create an Account" />
        </div>
    </a>
</div>
<div class="login">
    <a href="${g.createLink(controller : 'account', action : 'logIn',params : [])}">
        <div class = "input-box">
            <g:actionSubmit value="Login" />
        </div>
    </a>
</div>
<div class="guest">
    <a href="${g.createLink(controller : 'account', action : 'guestView',params : [])}">
        <div class = "input-box">
            <g:actionSubmit value="Login as Guest" />
        </div>
    </a>
</div>
</div>

<g:img dir="assets" file="BASICLogo.jpg" />

</body>
<body>
Cookie value of here for current: <g:cookie name="count" /><BR>
Cookie value of what will be: ${count2}
</body>

</html>