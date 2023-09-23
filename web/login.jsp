<%-- 
    Document   : login
    Created on : Sep 22, 2023, 9:50:06 AM
    Author     : ubro3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String errorMessage = (String) request.getAttribute("ERROR");
    %>
    <body>
        <h1>YOU SHOULD KYS</h1>
        <h2>KYS REASON: <%= errorMessage %></h2>
    </body>
</html>
