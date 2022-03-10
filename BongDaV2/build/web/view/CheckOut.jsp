<%-- 
    Document   : CheckOut
    Created on : Oct 24, 2021, 8:06:45 PM
    Author     : Egamorft
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <title>Project PRJ</title>
        <link href="https://fonts.googleapis.com/css?family=Montserrat%7COpen+Sans:700,400%7CRaleway:400,800,900" rel="stylesheet" />
        <link rel="icon" href="favicon.ico" type="image/x-icon">
        <link href="css/library/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="dev-assets/preloader-default.css" rel="stylesheet" type="text/css" />
        <!-- <link href="dev-assets/demo-switcher.css" rel="stylesheet" type="text/css" /> -->
    </head>
    <body>

        <%@include file="../Components/HeaderNotCarts.jsp" %>


        <!--BREADCRUMBS BEGIN-->
        <section class="image-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="info">
                            <div class="wrap">
                                <ul class="breadcrumbs">
                                    <li><a href="Home">Main</a>/</li>
                                    <li>Carts</li>
                                </ul>
                                <h1>CheckOut</h1>
                            </div>
                        </div>
                    </div>	
                </div>
            </div>
        </section>
        <!--BREADCRUMBS END-->
        <!--CHECKOUT WRAP BEGIN-->
        <section class="checkout-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert team-alert fade in" role="alert"> 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span class="fa fa-close" aria-hidden="true"></span></button> 
                            Follow us on facebook? <a href="https://www.facebook.com/egamorft/" target="_blank">Click here to follow us </a>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <h4>Billing Details</h4>
                        <form action="checkout" method="POST">
                            <div class="customer-info">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="item">
                                            <label>
                                                <span>Full Name <i>*</i></span>
                                                <input type="text" name="name" placeholder="Full name" value="${account.username}" disabled="">
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="item">
                                            <label>
                                                <span>Date of birth<i>*</i></span>
                                                <input type="date" name="dob">
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="item">
                                            <label>
                                                <span>Email<i>*</i></span>
                                                <input type="text" name="email" placeholder="Email">
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="item">
                                            <label>
                                                <span>Phone <i>*</i></span>
                                                <input type="text" name="phone" placeholder="Phone">
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="item">
                                            <label>
                                                <span>Address <i>*</i></span>
                                                <input type="text" name="address" placeholder="Address">
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="item">
                                            <label>
                                                <span>Order notes</span>
                                                <textarea name="note" placeholder="Notes about your order, e.g. special notes for delivery"></textarea>
                                            </label>
                                        </div>
                                    </div>

                                </div>
                                <div class="cart-total">

                                    <div class="delivery-list">
                                        <button type="submit" class="proceed">Place order<i class="fa fa-check" aria-hidden="true"></i></button>

                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                    <div class="col-md-5">
                        <h4>Your order</h4>
                        <table class="cart-table">
                            <tbody><tr>
                                    <th class="product">Product</th>
                                    <th class="total">Total</th>
                                </tr>
                                <c:forEach items="${carts}" var="cart">
                                    <tr>
                                        <td><img width="30%" class="product-image" src="images/product/${cart.value.product.imageUrl}" alt="cart-product"><strong>${cart.value.quantity} # ${cart.value.product.name}</strong></td>
                                        <td class="total">£ ${cart.value.product.price * cart.value.quantity}</td>
                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td>Subtotal<br>Shipping</td>
                                    <td class="total">£ ${totalMoney}<br>£ 4</td>
                                </tr>
                                <tr>
                                    <td><strong>Total</strong></td>
                                    <td class="total">£ ${totalMoney + 4}</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="cart-total">
                            <div class="delivery-list">
                                <label class="item">
                                    <input name="del-check" type="radio" checked="checked">
                                    <span class="name">Cash on Delivery</span>	
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--CHECKOUT WRAP END-->
        <%@include file="../Components/Footer.jsp" %>


    </body>
</html>
