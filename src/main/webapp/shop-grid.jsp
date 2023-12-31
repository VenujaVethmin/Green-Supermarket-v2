<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Venuja
  Date: 12/23/2023
  Time: 5:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>



<%@ include file="navbar.jsp" %>


<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Green Supermarket</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.jsp">Home</a>
                        <span>Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->


<%--<input class="form-control input-number qty-input" type="text" id="quantity-input" name="quantity" value="1">--%>
<%--<div class="qty-right-plus" data-type="plus" data-field="">--%>
<%--    <i class="fa-solid fa-plus"></i>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>

<%--<button onclick="addToCart(this, '${product.name}', '${product.price}', '${product.id}')" class="buy-button buy-button-2 btn btn-cart">--%>
<%--    <i class="fa-solid fa-cart-shopping"></i>--%>
<%--</button>--%>










class="fa fa-shopping-cart"












<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="sidebar">
                    <div class="sidebar__item">
                        <h4>Department</h4>
                        <ul>
                            <c:forEach var="category"  items="${categories}">
                                <li><a href="/shop?category=${category.name}">${category.name}</a></li>
                            </c:forEach>

                        </ul>
                    </div>



                    <div class="sidebar__item">
                        <div class="latest-product__text">


                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="product__discount">
          <h3>Products</h3>

                </div>

                <div class="row" style="max-height: 200vh; overflow-y: scroll;">

                    <c:forEach var="category" items="${productList}">

                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="img/product/product-1.jpg">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><button onclick="addToCart(this, '${product.name}', '${product.price}', '${product.id}')" class="buy-button buy-button-2 btn btn-cart">
                                            <i class="fa fa-shopping-cart"></i>
                                        </button></li>




                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">${category.name}</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>

            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->
<script>
    function addToCart(clickedButton, productName, price, productId) {
        // Find the associated quantity input
        let quantityInput = clickedButton.parentNode.querySelector('.qty-input');

        let quantity = parseInt(quantityInput.value);

        // Get existing cart items from local storage or initialize an empty array
        let cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];

        // Check if the item is already in the cart
        const existingItem = cartItems.find(item => item.productName === productName);

        if (existingItem) {
            // Update the quantity of the existing item
            existingItem.quantity += quantity;
        } else {
            // Add the new item to the cart
            const newItem = {
                productName: productName,
                price: price,
                quantity: quantity
            };
            cartItems.push(newItem);
        }

        // Save the updated cart back to local storage
        localStorage.setItem("cartItems", JSON.stringify(cartItems));

        // Reset the quantity input field to 1
        quantityInput.value = 1;
    }

    function removeFromCart(index) {
        let cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];

        // Remove the item at the specified index
        cartItems.splice(index, 1);

        // Save the updated cart back to local storage
        localStorage.setItem("cartItems", JSON.stringify(cartItems));

        // Update the cart display
        updateCartDisplay();
    }

    function updateCartDisplay() {
        const cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];
        const cartItemsContainer = document.getElementById("cart-items");
        const totalPriceElement = document.getElementById("total-price");
        const quantityContainer = document.getElementById("quantity");

        // Clear the existing content
        cartItemsContainer.innerHTML = "";

        // Display each item in the cart with a "Remove" button
        cartItems.forEach((item, index) => {
            const itemElement = document.createElement("tr");

            itemElement.innerHTML = `

            `
            cartItemsContainer.appendChild(itemElement);
        });

        // Calculate and display the total price
        const totalPrice = cartItems.reduce(
            (total, item) => total + item.price,
            0
        );
        totalPriceElement.textContent = totalPrice.toFixed(2);
    }

    // Initial update when the page loads
    updateCartDisplay();



</script>


<!-- Js Plugins -->
<script src="js/Sendemail.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>



</body>

</html>