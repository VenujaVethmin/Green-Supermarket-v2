import { Resend } from 'resend';

function sendConfirmationEmail(customerEmail) {
    // Import the Resend library
    // Create a new Resend instance
    console.log('Sending confirmation email to ' + customerEmail);
    const resend = new Resend('re_KvVH5HDU_An3u7Sn8MtWCChSxnuFKBju5');

    // Get cart items
    const cartItems = document.getElementById('cart-items').innerHTML;

    // Send the confirmation email with invoice content
    resend.emails.send({
        from: 'onboarding@resend.dev',
        to: "gsahindu@gmail.com",
        subject: 'Invoice for Your Purchase',
        html: `
            <p>Thank you for your purchase! Your transaction is complete. Total Value: <h5 id="total-price"> </h5></p>
            <table class="table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                    </tr>
                </thead>
                <tbody>
                    ${cartItems}
                </tbody>
            </table>
        `
    })
}

window.onload = function () {
    const cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];
    const cartItemsContainer = document.getElementById("cart-items");
    const totalPriceElement = document.getElementById("total-price");
    const subPriceElement = document.getElementById("sub-price");
    const shippingElement = document.getElementById("shipping-price");

    // Clear the existing content
    cartItemsContainer.innerHTML = "";

    // Display each item in the cart
    cartItems.forEach((item, index) => {
        const itemElement = document.createElement("tr");
        itemElement.innerHTML = `
            <td id="product-name-${index}" style="padding-top: 20px;">${item.productName}</td>
            <td style="padding-top: 20px;">${item.price}</td>
            <td style="padding-top: 20px;">${item.quantity}</td>
            <td style="padding-top: 20px;"><button style="background-color: transparent; color: red; border: none; text-decoration: underline;" onclick="removeFromCart(${index})">Remove Item</button></td>
        `;
        cartItemsContainer.appendChild(itemElement);
    });

    // Calculate and display the total price
    const totalPrice = cartItems.reduce(
        (total, item) => total + parseFloat(item.price) * item.quantity,
        0
    ) + (cartItems.length > 0 ? 150 : 0);
    totalPriceElement.textContent = totalPrice.toFixed(2);

    // Calculate and display the shipping cost
    const subPrice = cartItems.reduce(
        (total, item) => total + parseFloat(item.price) * item.quantity,
        0
    );
    subPriceElement.textContent = subPrice.toFixed(2);

    // Calculate and display the shipping price
    const shippingPrice = cartItems.length > 0 ? 150 : 0;
    shippingElement.textContent = shippingPrice.toFixed(2);
}

function removeFromCart(index) {
    let cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];

    // Remove the item at the specified index
    cartItems.splice(index, 1);

    // Save the updated cart back to local storage
    localStorage.setItem("cartItems", JSON.stringify(cartItems));

    // Refresh the page to update the cart display
    location.reload();
}
