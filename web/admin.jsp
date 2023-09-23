<%-- 
    Document   : admin.jsp
    Created on : Sep 22, 2023, 10:08:29 AM
    Author     : ubro3
--%>

<%@page import="java.util.List"%>
<%@page import="models.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <h1>E J KCJ!</h1>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null) {
                loginUser = new UserDTO();
            }
        %>
        <h1>Welcome! <%= loginUser.getFullName()%></h1>
        <form action="MainController" method="POST">
            Search<input type="text" name="search">
            <input type="submit" name="action" value="Search">
        </form>
        <%
            List<UserDTO> listUser = (List<UserDTO>) request.getAttribute("LIST_USER");
            if (listUser != null && !listUser.isEmpty()) {
        %>
        <div class="d-flex justify-content-center">
            <table border="1">
                <tr>
                    <th class="text-center" style="background-color: #6FD890;">User ID</th>
                    <th class="text-center" style="background-color: #6FD890;">Full Name</th>
                    <th class="text-center" style="background-color: #6FD890;">Role ID</th>
                    <th class="text-center" style="background-color: #F2F07E;">Operations</th>
                </tr>
                <% for (UserDTO user : listUser) {%>
                <tr>
                    <td class="px-3"><%= user.getUserID()%></td>
                    <td class="px-1"><%= user.getFullName()%></td>
                    <td class="px-3"><%= user.getRoleID()%></td>
                    <td>
                        <div style="display: flex; min-width: 10vw; justify-content: space-evenly;">
                            <button>Edit</button>
                            <button>Delete</button>
                        </div>
                    </td>
                </tr>
                <% } %>
            </table>
        </div>


        <%
            }
        %>

    </body>
</html>
