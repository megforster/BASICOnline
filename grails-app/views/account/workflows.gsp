<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 11/9/19
  Time: 12:03 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Activity Overview</title><%--Changes browser tab text--%>
<asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/> <%--Changes browser tab icon--%>

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'workflows.css')}" type="text/css">
</head>

<body>
%{--<h4>Time to Get Down to Buisness!</h4><%--Page header--%>--}%
<p> </p>
<h3>Select an Activity</h3><%--Page header--%>

<div class="form">
    <h2>You can chose a completely new activity or work on improving your score for one you've already completed.</h2>

    <div class = "input-box">
        <p>
            <g:link controller = "Instructions" action="placeholder1">
                <input type="button" value="Activity #1" class="button"/> <%--What makes it a button--%>
            </g:link>
        </p>

        <p>
            <g:link controller = "Instructions" action="placeholder2">
                <input type="button" value="Activity #2" class="button"/> <%--What makes it a button--%>
            </g:link>
        </p>

        <p>
            <g:link controller = "Instructions" action="placeholder3">
                <input type="button" value="Activity #3" class="button"/> <%--What makes it a button--%>
            </g:link>
        </p>

        <p>
            <g:link controller = "Instructions" action="placeholder4">
                <input type="button" value="Activity #4" class="button"/> <%--What makes it a button--%>
            </g:link>
        </p>

        <p>
            <g:link controller = "Instructions" action="placeholder5">
                <input type="button" value="Activity #5" class="button"/> <%--What makes it a button--%>
            </g:link>
        </p>
    </div>
</div>

</body>
</html>