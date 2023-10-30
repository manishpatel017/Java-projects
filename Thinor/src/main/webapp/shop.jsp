<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="thinor_java.Product"%>
<!-- Import the Product class -->
<%@ page import="thinor_java.ProductDAO"%>
<!-- Import the ProductDAO class -->
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<title>The Clothing Store</title>
</head>
<body>
	<jsp:include page="misc/nav.jsp"></jsp:include>
	<header>

		<div class="search-bar">
			<input type="text" placeholder="Search...">
			<button type="submit">Search</button>
		</div>

		<h1>Store</h1>

	</header>

	<main>
		<section class="product-listing">
			<!-- Java code to fetch and display products here -->
			<%
			ProductDAO productDAO = new ProductDAO();
			List<Product> products = productDAO.getProducts();

			for (Product product : products) {
			%>
			<!-- Product box -->
			<!-- Product box -->
			<div class="product">
				<div class="product-info">
					<h2><%=product.getProductName()%></h2>
					<p>
						Price: $<%=product.getPrice()%></p>
					<button type="button" class="add-to-cart"
						data-product="<%=product.getProductName()%>"
						data-price="<%=product.getPrice()%>">Add to Cart</button>
				</div>
			</div>
			<%
			}
			%>
		</section>
	</main>
	<script>
        // JavaScript code for handling interactions on the shop page
        document.addEventListener("DOMContentLoaded", function () {
            const addToCartButtons = document.querySelectorAll(".add-to-cart");

            addToCartButtons.forEach((button) => {
                button.addEventListener("click", function () {
                    const productId = button.getAttribute("data-product");
                    // You can use JavaScript to add the selected product to the cart
                    // This is where you might want to make an AJAX request to update the server-side cart as well.
                    alert("Added " + productId + " to the cart.");
                });
            });

            document.getElementById("searchButton").addEventListener("click", function () {
                // You can add search functionality here.
                alert("Performing search...");
            });
        });
    </script>
</body>
</html>
