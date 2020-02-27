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
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'login.css')}" type="text/css">
</head>

<body>
<%--The <a></a> tags here create links to a specific action, since the actions it lists are not in the same controller as the view you have to specify the controller too. The text between the tags is the text of the label--%>
<div class="form">
    <forms>

        %{--        <p><h4>If you would like to save your progress, please
                        <a href="${g.createLink(controller : 'account', action : 'newUser',params : [])}">create an account</a>,
                        <a href="${g.createLink(controller : 'account', action : 'logIn',params : [])}">log in</a>, or
                        <a href="${g.createLink(controller : 'account', action : 'guestView',params : [])}">log in as a guest</a>!</h4></p>--}%
        <h2>Sign In</h2>
        <g:form controller="account" action="submit"> <%--Form tag, associates the form with a controller and action--%>

            <div class= "input-box">
                <i class="fa fa-user" aria-hidden="true"></i>
                <g:textField type="text" name="emailAddress" placeholder="Email" required=" "/><br/>
            </div>
            <div class = "input-box">
                <i class="fa fa-unlock-alt" aria-hidden = "true"></i>
                <g:passwordField type="password" name="password" placeholder="Password" required =" " value="${password}"/><br/>
            </div>

            <div class="input-box">
                <%--The submit button goes in the form block so it can send the information typed into the fields (its in the same scope as the info)--%>
                <g:actionSubmit value="Submit" params="${[emailAddress:emailAddress,password:password]}"/> <%--Creates a submit button and sends
                                                          the parameters listed to the "submit" action the form is associated with--%>
            </div>
        </g:form>

        <a href="#">Forgot Password</a>
    </forms>
</div>

<%--Button to send users back to the initial landing --%>
<g:link controller = "landingPage" action="goToLandingPage"> <%--Will be changed latter--%>
    <input type="button" value="Home" class="button"/> <%--What makes it a button--%>
</g:link>

</body>
</html>