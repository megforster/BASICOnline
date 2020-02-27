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

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'pexamresults.css')}" type="text/css">
</head>

<body>
<div class="form">
    <forms>
        <%--Page header--%>
        <p><h4>Congratulations!</h4></p>
        <p>You have completed your placement exam.</p>
        <p>Your placement level is ${usr.placementLevel}</p> <%--Pulls user's placement level from their account--%>

        <div class="input-box">
        <%--Button that brings the user from the results page to their workflow page--%>
            <g:link controller="Account" action="workflows"
                    params="${[emailAddress: usr.emailAddress, password: usr.password]}">
                <input type="submit" value="Enter Workflows" class="button"/> <%--What makes it a button--%>
            </g:link>
        </div>
    </forms>
</div>
</body>
</html>