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
        <div class="container">
            <%
                String error = (String) request.getAttribute("ERROR");
                if (error == null) error="";
                
                UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
                if (loginUser == null || !"AD".equals(loginUser.getRoleID())) {
                    response.sendRedirect("login.html");
                    return;
                }
                String search = request.getParameter("search");
                if (search == null) search = "";
            %>
            <h1>Welcome! <%= loginUser.getFullName()%></h1>
            <form action="MainController">
                <input type="submit" name="action" value="Logout">
            </form>
            <form action="MainController">
                Search<input type="text" name="search" value="<%= search %>" required="">
                <input type="submit" name="action" value="Search">
            </form>
            <%
                List<UserDTO> listUser = (List<UserDTO>) request.getAttribute("LIST_USER");
                if (listUser != null && !listUser.isEmpty()) {
            %>
            <div>
                <h6><%= error %></h6>
            </div>
            <div class="d-flex justify-content-center">
                <table border="1">
                    <tr>
                        <th class="text-center" style="background-color: #6FD890;">User ID</th>
                        <th class="text-center" style="background-color: #6FD890;">Full Name</th>
                        <th class="text-center" style="background-color: #6FD890;">Role ID</th>
                        <th class="text-center" style="background-color: #F2F07E;">Operations</th>
                    </tr>
                    <% for (UserDTO user : listUser) {%>
                    <tr style="height: 6vh; border-bottom-width: 0.8px; border-bottom-color: rgb(222, 226, 230);">
                        <td class="px-3"><%= user.getUserID()%></td>
                        <td class="px-1"><%= user.getFullName()%></td>
                        <td class="px-5"><%= user.getRoleID()%></td>
                        <td>
                            <div style="display: flex; min-width: 10vw; justify-content: space-evenly;">
                                <a class="btn btn-primary" href="MainController?userID=<%= user.getUserID() %>&action=Update&fullName=<%= user.getFullName() %>&roleID=<%= user.getRoleID() %>&search=<%= search %>">Edit</a>
                                <a class="btn btn-danger" href="MainController?userID=<%= user.getUserID() %>&action=Delete&search=<%= search%>">Delete</a>
                            </div>
                        </td>
                    </tr>
                    <% } %>
                </table>
            </div>
            <%
                }
            %>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
