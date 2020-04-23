<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 11/9/19
  Time: 12:03 PM
--%>

%{--Page displayed when users select an activity to complete--}%
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Activity Overview</title>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/>

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'workflows.css')}" type="text/css">
</head>

<body>

<p></p>

<h3>Select an Activity</h3>

<div class="form">
    <h2>You can chose any activity you'd like to try below! Keep in mind, Activity 1 is the easiest and Activity 5 is the hardest.</h2>

    <div class="input-box">
        <p>
            <g:link controller="Instructions" action="activity1">
                <input type="button" value="Activity #1" class="button"/>
            </g:link>
        </p>

        <p>
            <g:link controller="Instructions" action="activity2">
                <input type="button" value="Activity #2" class="button"/>
            </g:link>
        </p>

        <p>
            <g:link controller="Instructions" action="activity3">
                <input type="button" value="Activity #3" class="button"/>
            </g:link>
        </p>

        <p>
            <g:link controller="Instructions" action="activity4">
                <input type="button" value="Activity #4" class="button"/>
            </g:link>
        </p>

        <p>
            <g:link controller="Instructions" action="activity5">
                <input type="button" value="Activity #5" class="button"/>
            </g:link>
        </p>
    </div>
</div>
</body>
</html>