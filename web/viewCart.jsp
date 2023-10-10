<%-- 
    Document   : viewCart
    Created on : Oct 6, 2023, 10:57:38 AM
    Author     : ubro3
--%>

<%@page import="models.shopping.Cart"%>
<%@page import="models.shopping.Clothes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Cart</title>
    </head>
    <body>
        <h1>YOUR LOVELY SHOPPING CART</h1>
        <%
            Cart cart = (Cart) session.getAttribute("CART");
            if (cart != null && !cart.getCart().isEmpty()) {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 1;
                    double total = 0;
                    for (Clothes clothes : cart.getCart().values()) {
                        total += clothes.getPrice() * clothes.getQuantity();
                %>
            <form action="MainController" method="POST">
                <tr>
                    <td><%= count++ %></td>
                    <td><input type="text" name="id" value="<%= clothes.getId() %>" readonly=""></td>
                    <td><%= clothes.getName() %></td>
                    <td><%= clothes.getPrice() %></td>
                    <td><input type="number" name="quantity" value="<%= clothes.getQuantity() %>" min="1" max="" required=""></td>
                    <td><%= clothes.getPrice() * clothes.getQuantity() %></td>
                    <td>
                        <input type="submit" name="action" value="Edit">
                        <input type="submit" name="action" value="Remove">
                    </td>
                </tr>
            </form>

                <%
                    }
                %>
            </tbody>
        </table>
        
        <h1>Total: <%= total %>$</h1>
        <%
            }
            else {
        %>
        <h1>CHUA CO SAN PHAM NAO DUOC CHON!</h1>
        <%
            }
        %>
        
        <a href="shopping.jsp">Add More</a>
    </body>
</html>
