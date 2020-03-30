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

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'alreadyExists.css')}" type="text/css">
</head>

<body>
<h4>An account with that email address already exists!</h4>

<div class = "form">

    <%--Create a button--%>
    <div class = "input-box">
    <p>
        <g:link action="logIn"> <%--Action pressing the button will perform, since this view is in the account folder and the
                        action is from the account controller you do not have to specify a controller--%>
            <input type="button" value="Login" class="button"/> <%--what makes it a button--%>
        </g:link>
    </p>

    <p>
    <%--Button to send users back to the initial landing --%>
        <g:link controller = "landingPage" action="goToLandingPage"> <%--Will be changed latter--%>
            <input type="button" value="Home" class="button"/> <%--What makes it a button--%>
        </g:link>
    </p>

</div>
</div>
</body>

<body>
<g:img dir="assets" file="BASICLogo.jpg" />
</body>

</html>