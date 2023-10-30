package thinor_java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

	public List<Product> getProducts() {
		List<Product> products = new ArrayList<>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String dbURL = "jdbc:mysql://localhost:3306/thinor";
			String dbUser = "root";
			String dbPass = "";
			Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

			String query = "SELECT * FROM products";
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				int productId = rs.getInt("product_id");
				String productName = rs.getString("product_name");
				double price = rs.getDouble("price");
				products.add(new Product(productName, price,productId));
			}

			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return products;
	}
}
