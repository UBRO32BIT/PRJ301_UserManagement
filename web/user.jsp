<%-- 
    Document   : user.jsp
    Created on : Sep 22, 2023, 10:08:53 AM
    Author     : ubro3
--%>

<%@page import="models.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <%
        UserDTO user = (UserDTO) session.getAttribute("LOGIN_USER");
        if (user == null) return;
    %>
    <body>
        <h1>HELLO CAC USER!</h1>
        User ID: <%= user.getUserID() %><br>
        Full name: <%= user.getFullName() %><br>
        Role: <%= user.getRoleID() %><br>
        Password:
    </body>
</html>
