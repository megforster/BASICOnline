<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/30/19
  Time: 8:47 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create New Account</title> <%--Changes browser tab text--%>
<asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/> <%--Changes browser tab icon--%>

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

                <%--The submit button goes in the form block so it can send the information typed into the fields (its in the same scope as the info)--%>
                <g:actionSubmit value="Create"/> <%--Creates a submit button and sends
                                                          the parameters listed to the "submit" action the form is associated with--%>
            </div>
        </g:form>

    </forms>
</div>

<%--Button to send users back to the initial landing --%>
<g:link controller="landingPage" action="goToLandingPage"><%--Will be changed latter--%>
    <input type="button" value="Home" class="button"/> <%--What makes it a button--%>
</g:link>

</body>
</html>