<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Venuja
  Date: 12/25/2023
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="#"><img src="img/logo.png" alt=""></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
            <li><a href="shoping-cart.html"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
        </ul>
        <div class="header__cart__price">item: <span class="total-price">$150.00</span></div>
    </div>
    <div class="humberger__menu__widget">
        <div class="header__top__right__language">
            <img src="img/language.png" alt="">
            <div>English</div>
            <span class="arrow_carrot-down"></span>

        </div>
        <div class="header__top__right__auth">
            <a href="Login.jsp"><i class="fa fa-user"></i> Login</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="./index.jsp">Home</a></li>
            <li><a href="./shop-grid.jsp">Shop</a></li>
            <li><a href="#">Pages</a>
                <ul class="header__menu__dropdown">

                    <li><a href="#">Shoping Cart</a></li>
                    <li><a href="./checkout.jsp">Check Out</a></li>
                </ul>

            </li>
        </ul>

    </nav>
    <div id="mobile-menu-wrap"></div>

    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>

        </ul>
    </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">


                        <div class="header__top__right__auth">
                            <c:choose>
                                <c:when test="${not empty sessionScope.email}">
                                    Welcome, ${sessionScope.email} | <a href="Logout">Logout</a>
                                </c:when>
                                <c:otherwise>
                                    <a href="Login.jsp"><i class="fa fa-user"></i> Login</a>
                                </c:otherwise>
                            </c:choose>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="./index.jsp"><img src="img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="./index.jsp">Home</a></li>
                        <li><a href="./shop-grid.jsp">Shop</a></li>



                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                        <li><a href="shoping-cart.html"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                    </ul>
                    <div class="header__cart__price">item: <span class="total-price"></span></div>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- Header Section End -->

<script>

    function addToCart(productName, price) {
        // Get existing cart items from local storage or initialize an empty array
        let cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];

        // Check if the item is already in the cart
        const isItemInCart = cartItems.some(item => item.productName === productName);

        if (isItemInCart) {
            // Show a message if the item is already in the cart
            alert(`"${productName}" is already in the cart.`);
        } else {
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
        const totalPriceElement = document.getElementsByClassName("total-price");

        // Clear the existing content
        cartItemsContainer.innerHTML = "";

        // Display each item in the cart with a "Remove" button
        cartItems.forEach((item, index) => {
            const itemElement = document.createElement("tr");
            <%--  itemElement.innerHTML = `${item.productName} - $${item.price.toFixed(--%>
            <%--  2--%>
            <%--)} <button onclick="removeFromCart(${index})">Remove</button>`;--%>
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



</body>
</html>
