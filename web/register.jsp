<%-- 
    Document   : register.jsp
    Created on : Oct 3, 2023, 9:48:07 AM
    Author     : ubro3
--%>

<%@page import="models.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        UserError userError = (UserError) request.getAttribute("USER_ERROR");
        if (userError == null) {
            userError = new UserError();
        }
    %>
    <body>
        <h1>DANG KI TAI KHOAN</h1>
        <form action="MainController" method="POST">
            User ID<input type="text" name="userID" required=""> <%= userError.getUserIDError() %><br>
            Full Name<input type="text" name="fullName" required=""> <%= userError.getFullNameError() %><br>
            <input type="hidden" name="roleID" value="US">
            RoleID: US <%= userError.getRoleIDError() %><br>
            Password<input type="password" name="password" required=""> <%= userError.getPasswordError() %><br>
            Retype Password<input type="password" name="rePassword" required=""> <%= userError.getRePasswordError() %><br>
            <input type="reset" value="Reset">
            <input type="submit" name="action" value="Register">
        </form>
    </body>
</html>
