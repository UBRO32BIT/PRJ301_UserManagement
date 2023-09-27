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
    <body>
        <form action="UpdateController">
            <input type="hidden" name="userID" value="<%= request.getParameter("userID") %>"><br>
            <input type="hidden" name="search" value="<%= request.getParameter("search") %>"<br>
            Full Name<input type="text" name="fullName" value="<%= request.getParameter("fullName") %>"><br>
            Role ID<input type="text" name="roleID" value="<%= request.getParameter("roleID") %>"><br>
            <input type="submit" name="action" value="Update">
        </form>
    </body>
</html>
