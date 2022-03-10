<%-- 
    Document   : Header
    Created on : Oct 24, 2021, 9:17:51 PM
    Author     : Egamorft
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="preloader-wrapper" id="preloader">
    <div class="motion-line dark-big"></div>
    <div class="motion-line yellow-big"></div>
    <div class="motion-line dark-small"></div>
    <div class="motion-line yellow-normal"></div>
    <div class="motion-line yellow-small1"></div>
    <div class="motion-line yellow-small2"></div>
</div>

<div class="top-bar">
    <div class="container">
        <div class="row">
            <div class="col-md-7 hidden-sm hidden-xs">
                <div class="top-contacts">
                    <ul class="socials">
                        <li><a href="https://www.facebook.com/egamorft/" target="_blank"><i
                                    class="fa fa-facebook-square" aria-hidden="true"></i></a></li>

                        <li><a href="#"><i class="fa fa-google" aria-hidden="true"></i></a></li>

                        <li><a href="https://www.instagram.com/egamorft/" target="_blank"><i class="fa fa-instagram"
                                                                                             aria-hidden="true"></i></a></li>
                    </ul>
                    <ul class="contacts">
                        <li class="phone"><i class="fa fa-phone-square" aria-hidden="true"></i>+84 888736810</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!--                MAIN MENU WRAP BEGIN-->
<div class="main-menu-wrap sticky-menu">
    <a href="Home" class="custom-logo-link"><img src="images/common/F.png" alt="logo" class="custom-logo" style="width:95px"></a>
    <div class="container">
        <nav class="navbar">
            <div class="collapse navbar-collapse" id="team-menu">
                <ul class="main-menu nav">
                    <li class="active">
                        <a href="Home"><span>Home</span></a>
                    </li>
                    <li>
                        <a href="Matches"><span>Matches</span></a>
                        <ul>
                            <li>
                                <a href="Table"><span>Standings<i class="fa fa-long-arrow-right"
                                                                  aria-hidden="true"></i></span></a>
                                <ul>
                                    <li><a href="Table"><span>Premier League</span></a></li>
                                </ul>
                            </li>
                            <li><a href="Matches"><span>result</span></a></li>
                            <li><a href="Schedule"><span>upcoming match</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="Players"><span>Team</span></a>
                        <ul>
                            <li><a href="Players"><span>top scorer</span></a></li>
                        </ul>
                    </li>
                    <li><a href="Product"><span>Store</span></a></li>
                    <li class="cart full">
                        <a href="#carts">
                            <span><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
                        </a>
                        <div class="cart-drop">
                            <table class="ct">
                                <c:forEach items="${sessionScope.carts}" var="cart">
                                    <tr>
                                        <td class="delete"><a href="cart-delete?productId=${cart.value.product.id}"><i class="fa fa-close" aria-hidden="true"></i></a></td>
                                        <td class="info">
                                            <img class="product-image" src="images/product/${cart.value.product.imageUrl}" alt="product-image">
                                            <em>${cart.value.product.name}<br><em class="price"> ${cart.value.quantity}x £ ${cart.value.product.price}</em></em>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                            <div class="wrap btn-wrap">
                                <a href="carts" class="btn view">View cart</a>
                                <a href="checkout" class="btn check">checkout cart</a>
                            </div>
                        </div>
                    </li>	


                    <li style="float: right; text-align: right; margin-top: 42px;">
                        <c:choose>
                            <c:when test="${sessionScope.account==null}">
                                <a href="login">sign in</a>
                            </c:when>
                            <c:otherwise>
                                <a href="#">Hi ${sessionScope.account.fullname}</a>
                                <ul>
                                    <li><a href="EditProfile"><span>My Profile</span></a></li>
                                    <li><a href="changepass"><span>Change Password</span></a></li>
                                    <li><a href="logout"><span>LogOut</span></a></li>
                                </ul>
                            </c:otherwise>
                        </c:choose>

                    </li>
                    <c:if test="${sessionScope.account.roleId == '1'}">
                        <li style="margin-left: 50px">
                            <a href="manager">Manager Website</a>
                        </li>
                    </c:if>
                </ul>


            </div>

        </nav>

    </div>

</div>