package thinor_java;

import java.util.ArrayList;
import java.util.List;

public class CartDAO {
    private List<CartItem> cartItems;

    public CartDAO() {
        // Initialize an empty shopping cart
        cartItems = new ArrayList<>();
    }

    public List<CartItem> getCartItems() {
        return cartItems;
    }

    public void addToCart(Product product) {
        // Implement logic to add a product to the cart
        // You can check if the product is already in the cart and update the quantity.
    }

    public void removeFromCart(Product product) {
        // Implement logic to remove a product from the cart.
    }

    public void clearCart() {
        // Implement logic to clear the cart.
    }
}
