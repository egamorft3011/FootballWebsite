<%-- 
    Document   : Cart
    Created on : Oct 22, 2021, 11:36:31 PM
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

        <%@include file="../Components/Header.jsp" %>


        <!--BREADCRUMBS BEGIN-->
        <section class="image-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="info">
                            <div class="wrap">
                                <ul class="breadcrumbs">
                                    <li><a href="Home">Main</a>/</li>
                                    <li>Store</li>
                                </ul>
                                <h1>Cart</h1>
                            </div>
                        </div>
                    </div>	
                </div>
            </div>
        </section>
        <!--BREADCRUMBS END-->


        <!--CART WRAP BEGIN-->

        <section class="cart-wrap">
            <div class="container">
                <c:choose>
                    <c:when test="${carts==null||carts.size()==0}">
                        <div class="alert alert-danger" role="alert">
                            Empty Cart
                        </div>
                        <div><a href="Product" class="btn btn-outline-success">Shopping now</a></div>
                    </c:when>
                    <c:otherwise>
                        <div class="row">
                            <div class="col-md-12">
                                <h4>Your shopping Cart</h4>
                            </div>
                            <form id="formQuantity" action="update-cart" method="get">
                                <div class="col-md-12 overflow-scroll">

                                    <table class="cart-table">
                                        <tr>
                                            <th></th>
                                            <th class="product">Product</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th class="total">Total</th>
                                        </tr>
                                        <c:forEach items="${carts}" var="cart" varStatus="track">
                                            <tr class="cart_iem">
                                                <td class="delete"><a href="cart-delete?productId=${cart.value.product.id}"><i class="fa fa-close" aria-hidden="true"></i></a></td>
                                                <td class="name"><img class="product-image" src="images/product/${cart.value.product.imageUrl}" alt="cart-product" style="width: 100px">${cart.value.product.name}</td>
                                                <td class="cost">£ ${cart.value.product.price}</td>
                                                <td class="quantity"><input onchange="this.form.submit()" type="number" min="1" max="${cart.value.product.quantity}" class="pl-1" name="quantity${cart.value.product.id}" value="${cart.value.quantity}"></td>
                                                <td class="total">£ ${cart.value.product.price * cart.value.quantity}</td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                </div>
                                <div class="col-md-8 col-sm-6">
                                    <div class="update-wrap">
                                        <a href="Product" class="btn" type="button">Buy more</a>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-12">
                                    <div class="cart-total">
                                        <h5>Cart Totals</h5>
                                        <div class="delivery-list">
                                            <label class="item">
                                                <input name="del-check" type="radio" checked="checked">
                                                <span class="name">Fast delivery</span>	
                                                <span class="price">£ 4</span>
                                            </label>
                                            <div class="cart-total-info">
                                                <div class="title">Total</div>
                                                <div class="price">£ ${totalMoney + 4}</div>
                                            </div>
                                            <a href="checkout" type="button" class="btn">Proceed to checkout<i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </section>
        <!--CART WRAP END-->

        <%@include file="../Components/Footer.jsp" %>



    </body>
</html>
