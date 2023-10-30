package thinor_java;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class CartServlet
 */

@SuppressWarnings("serial")
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the action parameter from the form (e.g., "add", "remove", "clear")
        String action = request.getParameter("action");
        
        if (action != null) {
            CartDAO cartDAO = new CartDAO();
            
            if (action.equals("add")) {
                // Get the product from the request (e.g., product ID)
                // Add the product to the cart
                // cartDAO.addToCart(product);
            } else if (action.equals("remove")) {
                // Get the product from the request
                // Remove the product from the cart
                // cartDAO.removeFromCart(product);
            } else if (action.equals("clear")) {
                // Clear the cart
                // cartDAO.clearCart();
            }
            
            // Redirect to the cart page
            response.sendRedirect("cart.jsp");
        }
    }
}
