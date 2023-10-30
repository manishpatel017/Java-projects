package thinor_java;

public class CartItem {
    private Product product;  // The product associated with this cart item
    private int quantity;     // The quantity of this product in the cart

    public CartItem(Product product) {
        this.product = product;
        this.quantity = 1; // Initialize the quantity to 1 when adding a new item to the cart
    }

    public Product getProduct() {
        return product;
    }

    public String getName() {
        return product.getProductName();
    }

    public double getPrice() {
        return product.getPrice();  // Access the price from the associated product
    }

    public int getQuantity() {
        return quantity;
    }

    public void incrementQuantity() {
        quantity++;
    }

    public double getTotal() {
        return getPrice() * quantity;  // Calculate the total based on the product's price and quantity
    }
}
