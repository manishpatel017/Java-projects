/**
 * 
 */
// JavaScript for handling the "Add to Cart" button clicks
const addToCartButtons = document.querySelectorAll(".add-to-cart");
const cartItems = document.getElementById("cart-items");
const cartTotal = document.getElementById("cart-total");

let total = 0;
const cart = [];

addToCartButtons.forEach(button => {
    button.addEventListener("click", addToCart);
});

function addToCart(event) {
    const product = event.target.getAttribute("data-product");
    const price = parseFloat(event.target.getAttribute("data-price"));

    // Add the product to the cart array
    cart.push({ product, price });

    // Display the cart items and update the total
    displayCart();
    updateTotal(price);
}

function displayCart() {
    cartItems.innerHTML = "";
    cart.forEach(item => {
        const listItem = document.createElement("li");
        listItem.textContent = `${item.product} - $${item.price}`;
        cartItems.appendChild(listItem);
    });
}

function updateTotal(price) {
    total += price;
    cartTotal.textContent = `$${total.toFixed(2)}`;
}
