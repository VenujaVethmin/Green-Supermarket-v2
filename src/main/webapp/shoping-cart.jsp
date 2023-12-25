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
    <link rel="stylesheet" href="cart.css" />
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

    <script src="app.js"></script>
</head>

<body>

<%@ include file="navbar.jsp" %>
<!-- Hero Section Begin -->
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>All departments</span>
                    </div>
                    <ul>
                        <li><a href="#">Fresh Meat</a></li>
                        <li><a href="#">Vegetables</a></li>
                        <li><a href="#">Fruit & Nut Gifts</a></li>
                        <li><a href="#">Fresh Berries</a></li>
                        <li><a href="#">Ocean Foods</a></li>
                        <li><a href="#">Butter & Eggs</a></li>
                        <li><a href="#">Fastfood</a></li>
                        <li><a href="#">Fresh Onion</a></li>
                        <li><a href="#">Papayaya & Crisps</a></li>
                        <li><a href="#">Oatmeal</a></li>
                        <li><a href="#">Fresh Bananas</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">
                            <div class="hero__search__categories">
                                All Categories
                                <span class="arrow_carrot-down"></span>
                            </div>
                            <label>
                                <input type="text" placeholder="What do yo u need?">
                            </label>
                            <button type="submit" class="site-btn">SEARCH</button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>+65 11.188.888</h5>
                            <span>support 24/7 time</span>
                        </div>
                    </div>
                </div>
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

<!-- Shoping Cart Section Begin -->
<%--<section class="shoping-cart spad">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-12">--%>
<%--                <div class="shoping__cart__table">--%>
<%--                    <table>--%>
<%--                        <thead>--%>
<%--                        <tr>--%>
<%--                            <th class="shoping__product">Products</th>--%>
<%--                            <th>Price</th>--%>
<%--                            <th>Quantity</th>--%>
<%--                            <th>Total</th>--%>
<%--                            <th></th>--%>
<%--                        </tr>--%>
<%--                        </thead>--%>
<%--                        <tbody>--%>
<%--                        <tr>--%>
<%--                            <td class="shoping__cart__item">--%>
<%--                                <img src="img/cart/cart-1.jpg" alt="">--%>
<%--                                <h5>Vegetable’s Package</h5>--%>
<%--                            </td>--%>
<%--                            <td class="shoping__cart__price">--%>
<%--                                $55.00--%>
<%--                            </td>--%>
<%--                            <td class="shoping__cart__quantity">--%>
<%--                                <div class="quantity">--%>
<%--                                    <div class="pro-qty">--%>
<%--                                        <label>--%>
<%--                                            <input type="text" value="1">--%>
<%--                                        </label>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </td>--%>
<%--                            <td class="shoping__cart__total">--%>
<%--                                $110.00--%>
<%--                            </td>--%>
<%--                            <td class="shoping__cart__item__close">--%>
<%--                                <span class="icon_close"></span>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td class="shoping__cart__item">--%>
<%--                                <img src="img/cart/cart-2.jpg" alt="">--%>
<%--                                <h5>Fresh Garden Vegetable</h5>--%>
<%--                            </td>--%>
<%--                            <td class="shoping__cart__price">--%>
<%--                                $39.00--%>
<%--                            </td>--%>
<%--                            <td class="shoping__cart__quantity">--%>
<%--                                <div class="quantity">--%>
<%--                                    <div class="pro-qty">--%>
<%--                                        <label>--%>
<%--                                            <input type="text" value="1">--%>
<%--                                        </label>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </td>--%>
<%--                            <td class="shoping__cart__total">--%>
<%--                                $39.99--%>
<%--                            </td>--%>
<%--                            <td class="shoping__cart__item__close">--%>
<%--                                <span class="icon_close"></span>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td class="shoping__cart__item">--%>
<%--                                <img src="img/cart/cart-3.jpg" alt="">--%>
<%--                                <h5>Organic Bananas</h5>--%>
<%--                            </td>--%>
<%--                            <td class="shoping__cart__price">--%>
<%--                                $69.00--%>
<%--                            </td>--%>
<%--                            <td class="shoping__cart__quantity">--%>
<%--                                <div class="quantity">--%>
<%--                                    <div class="pro-qty">--%>
<%--                                        <label>--%>
<%--                                            <input type="text" value="1">--%>
<%--                                        </label>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </td>--%>
<%--                            <td class="shoping__cart__total">--%>
<%--                                $69.99--%>
<%--                            </td>--%>
<%--                            <td class="shoping__cart__item__close">--%>
<%--                                <span class="icon_close"></span>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        </tbody>--%>
<%--                    </table>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-12">--%>
<%--                <div class="shoping__cart__btns">--%>
<%--                    <a href="#" class="primary-btn cart-btn">CONTINUE SHOPPING</a>--%>
<%--                    <a href="#" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>--%>
<%--                        Upadate Cart</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6">--%>
<%--                <div class="shoping__continue">--%>
<%--                    <div class="shoping__discount">--%>
<%--                        <h5>Discount Codes</h5>--%>
<%--                        <form action="#">--%>
<%--                            <label>--%>
<%--                                <input type="text" placeholder="Enter your coupon code">--%>
<%--                            </label>--%>
<%--                            <button type="submit" class="site-btn">APPLY COUPON</button>--%>
<%--                        </form>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6">--%>
<%--                <div class="shoping__checkout">--%>
<%--                    <h5>Cart Total</h5>--%>
<%--                    <ul>--%>
<%--                        <li>Subtotal <span>$454.98</span></li>--%>
<%--                        <li>Total <span>$454.98</span></li>--%>
<%--                    </ul>--%>
<%--                    <a href="#" class="primary-btn">PROCEED TO CHECKOUT</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>
<!-- Shoping Cart Section End -->

<!-- new Section ---->

<div class="container">
    <header>
        <h1>Your Shopping Cart</h1>
        <div class="shopping">
            <img src="cart.png"  alt="cart"/>
            <span class="quantity">0</span>
        </div>
    </header>
    <div class="List"></div>
</div>
<div class="card">
    <h1>Card</h1>
    <ul class="ListCard"></ul>
    <div class="checkout">
        <div class="total">0</div>
        <div class="closeShopping">Close</div>

    </div>
</div>


<!--- end---->

<!-- Footer Section Begin -->
<footer class="footer spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__about__logo">
                        <a href="./index.jsp"><img src="img/logo.png" alt=""></a>
                    </div>
                    <ul>
                        <li>Address: 60-49 Road 11378 New York</li>
                        <li>Phone: +65 11.188.888</li>
                        <li>Email: hello@colorlib.com</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                <div class="footer__widget">
                    <h6>Useful Links</h6>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">About Our Shop</a></li>
                        <li><a href="#">Secure Shopping</a></li>
                        <li><a href="#">Delivery infomation</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Our Sitemap</a></li>
                    </ul>
                    <ul>
                        <li><a href="#">Who We Are</a></li>
                        <li><a href="#">Our Services</a></li>
                        <li><a href="#">Projects</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Innovation</a></li>
                        <li><a href="#">Testimonials</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="footer__widget">
                    <h6>Join Our Newsletter Now</h6>
                    <p>Get E-mail updates about our latest shop and special offers.</p>
                    <form action="#">
                        <label>
                            <input type="text" placeholder="Enter your mail">
                        </label>
                        <button type="submit" class="site-btn">Subscribe</button>
                    </form>
                    <div class="footer__widget__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="footer__copyright">
                    <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                    <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Js Plugins -->
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