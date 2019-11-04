<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 10/30/19
  Time: 9:44 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>User List</title> <%--Changes browser tab text--%>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/> <%--Changes browser tab icon--%>
</head>
<body>

<%--Lists out every instance in the User database--%>
<g:if test="${userList.size == 0}"> <%--If there are no instances in the User database--%>
    There are no users yet <%--Print there aren't any users--%>
</g:if>
<g:else> <%--Else list all the instances--%>
    <table> <%--Formats the list nicer--%>
        <tr>
            <g:each in="${userList}" var="user"> <%--for each instance in database User--%>
                <td>${user.firstName}</td> <%--List the first name--%>
                <td>${user.lastName}</td> <%--List the last name--%>
                <td>${user.emailAddress}</td> <%--List the email address--%>
            </g:each>
        </tr>
    </table>
</g:else>
</body>
</html>