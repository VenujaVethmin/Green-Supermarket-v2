<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Venuja
  Date: 12/24/2023
  Time: 1:07 PM
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
<!-- Hero Section Begin -->
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">

            </div>
            <div class="col-lg-9">

            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Shopping Cart</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.jsp">Home</a>
                        <span>Shopping Cart</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shoping Cart Section Begin -->--%>
<section class="shoping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__table">
                    <table>
                        <thead>
                        <tr>
                            <th class="shoping__product">Products</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody id="cart-items">
<%--                        Item Start Here--%>

                           <tr>

                                   <td class="shoping__cart__item">
                                       <img src="img/cart/cart-1.jpg" alt="">
                                       <h5>Vegetable’s Package</h5>
                                   </td>
                                   <td class="shoping__cart__price">
                                       $55.00
                                   </td>
                                   <td class="shoping__cart__quantity">
                                       <div class="quantity">
                                           <div class="pro-qty">
                                               <label>
                                                   <input type="text" value="1">
                                               </label>
                                           </div>
                                       </div>
                                   </td>
                                   <td class="shoping__cart__total">
                                       $110.00
                                   </td>
                                   <td class="shoping__cart__item__close">
                                       <span class="icon_close"></span>
                                   </td>

                           </tr>

<%--                        Item Ends Here--%>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__btns">
                    <a href="#" class="primary-btn cart-btn">CONTINUE SHOPPING</a>
                    <a href="#" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                        Upadate Cart</a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="shoping__continue">

                </div>
            </div>
            <div class="col-lg-6">
                <div class="shoping__checkout">
                    <h5>Cart Total</h5>
                    <ul>
<%--                        <li>Subtotal <span>$454.98</span></li>--%>
                        <li>Total <span id="total-price"></span></li>
                    </ul>
                    <a href="#" class="primary-btn">PROCEED TO CHECKOUT</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shoping Cart Section End -->





<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>

<%--<script src="js/app.js"></script>--%>
<script>
    function addToCart(productName, price) {
        // Get existing cart items from local storage or initialize an empty array
        let cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];

        // Add the new item to the cart
        const newItem = {
            productName: productName,
            price: price,
        };
        cartItems.push(newItem);

        // Save the updated cart back to local storage
        localStorage.setItem("cartItems", JSON.stringify(cartItems));

        // Alert to indicate that the item has been added to the cart (you can customize this part)
        alert(`"${productName}" has been added to the cart.`);

        // Update the cart display
        updateCartDisplay();
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

        // Clear the existing content
        cartItemsContainer.innerHTML = "";

        console.log(cartItems);


        <%--// Display each item in the cart with a "Remove" button--%>
        <%--cartItems.forEach((item, index) => {--%>
        <%--    const itemElement = document.createElement("tr");--%>
        <%--    itemElement.innerHTML = `--%>
        <%--    <td>"${item.productName}"</td>--%>
        <%--    <td>"$${item.price.toFixed(2)}"</td>--%>
        <%--    <td><button onclick="removeFromCart(${index})">Remove</button></td>--%>
        <%--    `;--%>
        <%--    cartItemsContainer.appendChild(itemElement);--%>
        <%--});--%>

        // Calculate and display the total price
        const totalPrice = cartItems.reduce(
            (total, item) => total + item.price,
            0
        );
        totalPriceElement.textContent = totalPrice.toFixed(2);
    }

    // Initial update when the page loads
    updateCartDisplay();

    console.log("hutto   .....")



</script>

</body>

</html>