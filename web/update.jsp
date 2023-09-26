<%-- 
    Document   : update
    Created on : Sep 26, 2023, 11:30:00 AM
    Author     : ubro3
--%>

<%@page import="models.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE</title>
    </head>
    <% UserDTO user = (UserDTO) request.getAttribute("UPDATE_USER"); %>
    <body>
        <form method="POST">
            <input type="hidden" value="<%= user.getUserID() %>">
            <input type="text" name="fullName" value="<%= user.getFullName() %>">
            <input type="text" name="roleID" value="<%= user.getRoleID() %>">
            <input type="submit" name="action" value="Update">
        </form>
    </body>
</html>
