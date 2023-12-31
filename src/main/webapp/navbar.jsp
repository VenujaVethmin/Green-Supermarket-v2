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
            <li><a href="shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
        </ul>
        <div class="header__cart__price">item: <span>$150.00</span></div>
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

<<<<<<< Updated upstream
    
=======
    <div class="humberger__menu__contact">
        <ul>
<%--            <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>--%>

        </ul>
    </div>
>>>>>>> Stashed changes
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="heade"><ul>
                            <li><i class="fa fa-envelope"></i> hello@colorlib.co</li>

                        </ul>
r                    </div>
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
                    <a href="./index.jsp"><img src="img/language.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="./index.jsp">Home</a></li>
                        <li><a href="./shop-grid.jsp">Shop</a></li>
                        <li><a href="#">Pages</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="#">Shop Details</a></li>
                                <li><a href="checkout.jsp">Shoping Cart</a></li>
                                <li><a href="./checkout.jsp">Check Out</a></li>
                            </ul>
                        </li>


                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                        <li><a href="shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                    </ul>
<<<<<<< Updated upstream
                    <div class="header__cart__price">item: <span>$150.00</span></div>
=======
<div class="header__cart__price">item: <span class="total-price"></span></div>
>>>>>>> Stashed changes
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- Header Section End -->


</body>
</html>
