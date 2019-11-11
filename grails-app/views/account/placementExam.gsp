<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 11/9/19
  Time: 12:14 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Placement Exam</title> <%--Changes browser tab text--%>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/> <%--Changes browser tab icon--%>
</head>

<body>
<p>Here will be where users can access the placement exam</p> <%--temporary description of page purpose--%>
<br>
<br>
<p><h4>Welcome ${usr.firstName}</h4></p><%--Page header--%>
<p>Please start the workflow below to be assigned a placement level! Placement levels determine which practice workflows you have access to.</p>
<p>As another note, whatever placement level you wind up in is not a negative refection of your abilities or potential. In fact, this tool was made for users with little experience!</p>

<%--Button to submit placement exam--%>
<g:link controller = "Account" action="results" params ="${[emailAddress: usr.emailAddress, password: usr.password]}">
<input type="button" value="Finish and Submit" class="button"/> <%--What makes it a button--%>
</g:link>
</body>
</html>