<%-- 
    Document   : shopping
    Created on : Oct 6, 2023, 10:24:16 AM
    Author     : ubro3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BO MAY LAM SHOP</title>
    </head>
    <%
        String shoppingMessage = (String) request.getAttribute("SHOPPING_MESSAGE");
        if (shoppingMessage == null) {
            shoppingMessage = "";
        }
    %>
    <body>
        <h1>THANG NAO CO TIEN NAP VAO DONATE SHOP CHO TAO</h1>
        <a href="viewCart.jsp">View Cart</a>
        <form action="MainController" method="POST">
            <select name="cmbClothes">
                <option value="P001-T Shirt Can canh Dam Vinh Hung-100">T-Shirt Can Canh Dam Vinh Hung</option>
                <option value="P002-Halloween cung Gojo Satoru-25">Halloween cung Gojo Satoru</option>
                <option value="P003-Hatsume Miku Figure-70">Hatsume Miku Figure</option>
                <option value="P004-T Shirt In Hinh Kim Jong Un-69">T-Shirt In Hinh Kim Jong Un</option>
            </select>
            <select name="cmbQuantity">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="5">5</option>
                <option value="10">10</option>
            </select>
            <input type="submit" name="action" value="Add">
        </form>
        <div>
            <%= shoppingMessage %>
        </div>
    </body>
</html>
