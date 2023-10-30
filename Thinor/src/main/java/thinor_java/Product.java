package thinor_java;

public class Product {
    private String productName;
    private double price;
    private int productId;

    public Product(String productName, double price, int productId) {
        this.productName = productName;
        this.price = price;
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public double getPrice() {
        return price;
    }

	public int getProductId() {
		return productId;
	}
}
