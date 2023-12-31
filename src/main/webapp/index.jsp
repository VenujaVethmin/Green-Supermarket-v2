<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Venuja
  Date: 12/23/2023
  Time: 5:34 PM
  To change this template use File | Settings | File Templates.
--%>


<%--db.pujlipkeuabbrkutqlkl.supabase.co--%>
<%--username = postgres--%>
<%--password = Venujavethmin--%>





<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300&display=swap" rel="stylesheet">

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

<%--<c:forEach var="category" items="${categories}">--%>
<%--    <p>${category.name}</p>--%>
<%--</c:forEach>--%>





<%@ include file="navbar.jsp" %>

<!-- Hero Section Begin -->
<section class="hero">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>All departments</span>
                    </div>
                    <ul>
                        <c:forEach var="category"  items="${categories}">
                            <li><a href="/shop?category=${category.name}">${category.name}</a></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">

                    <div class="hero__search__phone">


                    </div>
                </div>
                <div class="hero__item set-bg" data-setbg="img/hero/banner.jpg">
                    <div class="hero__text">
                        <span>FRUIT FRESH</span>
                        <h2>Vegetable <br />100% Organic</h2>
                        <p>Free Pickup and Delivery Available</p>
                        <a href="#" class="primary-btn">SHOP NOW</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Categories Section Begin -->
<section class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">

                    <c:forEach var="category"  items="${categories}">
                        <div class="col-lg-3">
                            <div class="categories__item set-bg" data-setbg="img/categories/cat-1.jpg">
                                <h5><a href="/shop?category?=${category.name}">${category.name}</a></h5>
                            </div>
                        </div>
                    </c:forEach>

            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->

<!-- Featured Section Begin -->
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Featured Product</h2>
                </div>

            </div>
        </div>
<%--        class="container  mt-5" style="max-height: 150vh; overflow-y: scroll;"--%>
        <div class="row featured__filter" style="max-height: 60vh; overflow-y: scroll;">
            <c:forEach var="i" begin="1" end="15" >

                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-3.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="shoping-cart.html"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>


            </c:forEach>




</section>
<!-- Featured Section End -->

<!-- Banner Begin -->
<div class="banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="img/banner/banner-1.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="img/banner/banner-2.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner End -->

<!-- Latest Product Section Begin -->
<div class="container  mt-5" style="max-height: 60vh; overflow-y: scroll;">
    <div class="row">
        <c:forEach var="product"  items="${productList}">
            <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-3.jpg">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><button onclick="addToCart('${product.name}', ${product.price})"><i class="fa fa-shopping-cart"></i></button></li>

                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">${product.name}</a></h6>
                        <h5>Rs. ${product.price}</h5>

                    </div>
                </div>
            </div>

        </c:forEach>
    </div>
    </div>



<!-- Latest Product Section End -->
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
        const totalPriceElement = document.getElementById("total-price");

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



<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>



></body>

</html>