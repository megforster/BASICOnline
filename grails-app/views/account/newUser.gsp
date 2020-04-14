<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/30/19
  Time: 8:47 PM
--%>

%{--Page displayed when user decides to create a new account--}%
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create New Account</title>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/>

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'newuser.css')}" type="text/css">
</head>

<body>

<div class="form">
    <forms>
        <h2>Sign Up</h2>

        <p><h4>Enter your information into the fields below and press create!</h4></p>
        <g:form controller="account" action="create">
            <div class="input-box">
                <i class="fa fa-user" aria-hidden="true"></i>
                <g:textField type="text" name="firstName" placeholder="First Name" required=" "/><br/>
            </div>

            <div class="input-box">
                <i class="fa fa-user" aria-hidden="true"></i>
                <g:textField type="text" name="lastName" placeholder="Last Name" required=" "/><br/>
            </div>

            <div class="input-box">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <g:textField type="text" name="emailAddress" placeholder="Email" required=" "/><br/>
            </div>

            <div class="input-box">
                <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                <g:passwordField type="password" name="password" placeholder="Password" required=""/><br/><br>
            </div>

            <div class="input-box">

                <g:actionSubmit value="Create"/>
            </div>
        </g:form>

    </forms>
</div>

<g:link controller="landingPage" action="goToLandingPage">
    <input type="button" value="Home" class="button"/>
</g:link>

</body>
</html>