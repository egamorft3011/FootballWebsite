<%-- 
    Document   : Detail
    Created on : Oct 22, 2021, 4:25:51 PM
    Author     : Egamorft
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" 
           uri = "http://java.sun.com/jsp/jstl/functions" %>
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
                                    <li>Product</li>
                                </ul>
                                <h1>Detail</h1>
                            </div>
                        </div>
                    </div>	
                </div>
            </div>
        </section>
        <!--BREADCRUMBS END-->

        <!--PRODUCT SINGLE BEGIN-->

        <section class="product-single">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h4>Details product</h4>
                    </div>
                    <div class="col-md-7">
                        <div class="product-slider">
                            <div class="connected-carousels">
                                <div class="navigation jcarousel-skin-default">
                                    <a href="#" class="prev prev-navigation"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
                                    <a href="#" class="next next-navigation"><i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                    <div class="carousel carousel-navigation jcarousel-vertical">
                                        <ul>
                                            <c:forEach items="${listImages}" var="image">
                                                <li>
                                                    <img width="110px" src="images/product/${image.imageUrl}" alt="product">
                                                </li>
                                            </c:forEach>
                                            <c:forEach items="${listImages}" var="image">
                                                <li>
                                                    <img width="110px" src="images/product/${image.imageUrl}" alt="product">
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                                <div class="stage">
                                    <div class="carousel carousel-stage">

                                        <ul>
                                            <c:forEach items="${listImages}" var="image">
                                                <li class="stage-item">
                                                    <span class="store-badge new">new</span>
                                                    <img width="545px" src="images/product/${image.imageUrl}" alt="product">
                                                </li>
                                            </c:forEach>
                                            <c:forEach items="${listImages}" var="image">
                                                <li class="stage-item">
                                                    <span class="store-badge new">new</span>
                                                    <img width="545px" src="images/product/${image.imageUrl}" alt="product">
                                                </li>
                                            </c:forEach>
                                        </ul>
                                        <a href="#" class="prev prev-stage"><span><i class="fa fa-angle-left" aria-hidden="true"></i></span></a>
                                        <a href="#" class="next next-stage"><span><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="product-right-info">
                            <div class="rating-wrap">
                                <div class="rating five"></div>
                            </div>
                            <div class="price">£${product.price}</div>
                            <p>${product.description}</p>
                            <div class="title">Colors</div>
                            <div class="color-filter-item">
                                <ul>
                                    <li>
                                        <c:set var="test" value="${product.code}" />
                                        <c:choose>
                                            <c:when test="${fn:contains(test, 'MC') && fn:contains(test, 'C')}">
                                                <label class="color-check blue">
                                                    <input type="checkbox" />
                                                    <span class="check"><i class="fa fa-check" aria-hidden="true"></i></span>
                                                </label>
                                            </c:when>
                                            <c:otherwise>
                                                <label class="color-check red">
                                                    <input type="checkbox" />
                                                    <span class="check"><i class="fa fa-check" aria-hidden="true"></i></span>
                                                </label>
                                            </c:otherwise>
                                        </c:choose>
                                    </li>
                                </ul>
                            </div>
                            <div class="title">Quantity</div>
                            <div class="quantity-wrap">
                                <input type="number" placeholder="1" min="1" max="${product.quantity}">
                                <a href="add-to-cart?productId=${product.id}" class="btn small">Add to cart</a>
                            </div>
                            <div class="details">
                                <ul>
                                    <li><span>SKU: </span>2021/2022</li>
                                    <li><span>Categories: </span>${product.name}</li>
                                    <li><span>Tags: </span>${product.code}</li>
                                </ul>
                            </div>
                            <ul class="socials">
                                <li><a href="https://www.facebook.com/egamorft/" target="_blank"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-google" aria-hidden="true"></i></a></li>
                                <li><a href="https://www.instagram.com/egamorft/" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>



        </section>

        <!--PRODUCT SINGLE END-->

        <!--FEATURED PRODUCTS BEGIN-->

        <section class="featured-products">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h4>Featured products</h4>
                    </div>
                    <div class="col-md-12">
                        <div class="owl-carousel owl-theme featured-slider">
                            <c:forEach items="${listProducts}" var="product">
                                <div class="store-list-item">
                                    <div>
                                        <a href="Detail?Product_ID=${product.id}">
                                            <span class="store-badge hot">hot</span>
                                            <img src="images/product/${product.imageUrl}" alt="store-item-img">
                                        </a>
                                        <div class="info">
                                            <span class="name">${product.name}</span>
                                            <span class="price">£${product.price}</span>	
                                            <div class="btn-wrap">
                                                <a href="add-to-cart?productId=${product.id}" class="btn small" type="button">Add to cart</a>
                                                <a href="Detail?Product_ID=${product.id}" class="btn small" type="button">Details</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="custom-navigation featured-navigation">
                            <a class="custom-next-btn"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
                            <a class="custom-prev-btn"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6 text-right">
                        <a href="Product" class="feat-show-all">show all</a>
                    </div>
                </div>
            </div>
        </section>

        <!--FEATURED PRODUCTS END-->

        <%@include file="../Components/Footer.jsp" %>


    </body>
</html>
