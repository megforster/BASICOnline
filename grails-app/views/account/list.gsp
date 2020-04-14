<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/30/19
  Time: 9:44 PM
--%>
%{--Page displays all users in the database FOR DEVELOPMENT PURPOSES ONLY--}%
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>User List</title>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/>
</head>

<body>

<g:if test="${userList.size == 0}">
    There are no users yet
</g:if>
<g:else>
    <table>
        <tr>
            <g:each in="${userList}" var="user">
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.emailAddress}</td>
            </g:each>
        </tr>
    </table>
</g:else>
</body>
</html>