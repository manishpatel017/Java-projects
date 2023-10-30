<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="thinor_java.CartItem" %> <!-- Import the CartItem class -->
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>Shopping Cart</title>
</head>
<body>
    <jsp:include page="misc/nav.jsp"></jsp:include>
    <header>
        <h1>Shopping Cart</h1>
    </header>
    <main>
        <section class="cart">
            <h2>Your Shopping Cart</h2>
            <table>
                <tr>
                    <th>Product</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
                <%
                    List<CartItem> cartItems = (List<CartItem>) session.getAttribute("cartItems");
                    double cartTotal = 0;
                    if (cartItems != null && !cartItems.isEmpty()) {
                        for (CartItem item : cartItems) {
                            cartTotal += item.getTotal();
                %>
                <tr>
                    <td><%= item.getName() %></td>
                    <td>$<%= item.getPrice() %></td>
                    <td><%= item.getQuantity() %></td>
                    <td>$<%= item.getTotal() %></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="4">Your cart is empty.</td>
                </tr>
                <%
                    }
                %>
            </table>
            <p>Total: $<%= cartTotal %></p>
        </section>
    </main>
</body>
</html>
