<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/30/19
  Time: 8:36 PM
--%>

%{--Page displayed when user opts to log into an existing account--}%
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome to BASIC Online!</title>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/>

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'login.css')}" type="text/css">
</head>

<body>

<div class="form">
    <forms>

        <h2>Sign In</h2>
        <g:form controller="account" action="submit">

            <div class="input-box">
                <i class="fa fa-user" aria-hidden="true"></i>
                <g:textField type="text" name="emailAddress" placeholder="Email" required=" "/><br/>
            </div>

            <div class="input-box">
                <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                <g:passwordField type="password" name="password" placeholder="Password" required=" "
                                 value="${password}"/><br/>
            </div>

            <div class="input-box">
                <g:actionSubmit value="Submit" params="${[emailAddress: emailAddress, password: password]}"/>
            </div>
        </g:form>

        <a href="#">Forgot Password</a>
    </forms>
</div>

<g:link controller="landingPage" action="goToLandingPage">
    <input type="button" value="Home" class="button"/>
</g:link>

</body>
</html>