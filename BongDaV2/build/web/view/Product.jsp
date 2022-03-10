<%-- 
    Document   : Store
    Created on : Oct 22, 2021, 2:49:00 PM
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
                                <li><a href="https://www.facebook.com/egamorft/"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-google" aria-hidden="true"></i></a></li>
                                <li><a href="https://www.instagram.com/egamorft/"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            </ul>
                            <ul class="contacts">
                                <li class="phone"><i class="fa fa-phone-square" aria-hidden="true"></i>+84 888736810</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="top-search">
                            <form action="search" method="POST">
                                <input value="${txtSearch}" type="text" name="txt">
                                <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                            </form>
                        </div>

                        <div class="clear"></div>
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
                                <h1>Product</h1>
                            </div>
                        </div>
                    </div>	
                </div>
            </div>
        </section>
        <!--BREADCRUMBS END-->

        <div class="store-wrap">
            <div class="container">
                <div class="row row-offcanvas row-offcanvas-left">
                    <div class="sidebar col-xs-6 col-sm-6 col-md-3 sidebar-offcanvas" id="sidebar">
                        <div class="sidebar-menu-wrap">
                            <h6>Categories</h6>
                            <c:forEach items="${listCategories}" var="category" >
                                <ul class="categories-list">

                                    <li class="dropdown">
                                        <a href="Filter?categoryId=${category.id}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><span class="count">11</span>${category.categoryName}</a>

                                        <c:forEach items="${category.getListSubCategories()}" var="subCategory">
                                            <ul class="dropdown-menu">
                                                <li><a href="Filter?subCategoryId=${subCategory.id}"><span class="count">10</span>${subCategory.subCategoryName}</a></li>
                                            </ul>
                                        </c:forEach>

                                    </li>

                                </ul>
                            </c:forEach>
                        </div>
                        <div class="filter-wrap">
                            <h6>Filters</h6>
                            <div class="filter-items-wrap">
                                <div class="filter-title">Sport</div>
                                <div class="filter-item">
                                    <ul>
                                        <li>
                                            <input type="checkbox" class="filter-check" id="test1">
                                            <label for="test1">Lifestyle</label>
                                        </li>
                                        <li>
                                            <input checked="" type="checkbox" class="filter-check" id="test3">
                                            <label for="test3">Football</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="filter-check" id="test5">
                                            <label for="test5">Gym &amp; Training</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="filter-check" id="test7">
                                            <label for="test7">Tennis</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="filter-check" id="test8">
                                            <label for="test8">Golf</label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-9">

                        <p class="hidden-md hidden-lg">
                            <button type="button" class="btn sidebar-btn" data-toggle="offcanvas" title="Toggle sidebar">sidebar</button>
                        </p>

                        <div class="row">
                            <c:if test="${listProducts==null||listProducts.size()==0}"><h3>Not found</h3></c:if>
                            <c:forEach items="${listProducts}" var="product">
                                <div class="col-md-4 col-sm-6">
                                    <div class="store-list-item">
                                        <div>
                                            <a href="Detail?Product_ID=${product.id}">
                                                <img src="images/product/${product.imageUrl}" alt="product">
                                            </a>
                                            <div class="info">
                                                <span class="name">${product.name} </span>
                                                <span class="price">£${product.price}</span>	
                                                <div class="btn-wrap">
                                                    <a href="add-to-cart?productId=${product.id}" class="btn small" type="button">Add to cart</a>

                                                    <a href="Detail?Product_ID=${product.id}" class="btn small" type="button">Details</a>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <c:if test="${totalPage>1}">
                            <ul class="pagination">
                                <li class="pagination-item ${page<=1?"disabled":""}">
                                    <a class="pagination-item__link" href="${url}page=${page-1}" tabindex="-1" aria-disabled="true">Previous</a>
                                </li>

                                <c:forEach begin="1" end="${totalPage}" var="i">
                                    <li class="pagination-item__link ${i==page?"active":""}"><a class="page-link" href="${url}page=${i}">${i}</a></li>
                                    </c:forEach>
                                <li class="pagination-item__link ${page>=totalPage?"disabled":""}">
                                    <a class=" pagination-item__link" href="${url}page=${page+1}">Next</a>
                                </li>
                            </ul>
                        </c:if>
                    </div>
                </div>
            </div>




        </div>
        <%@include file="../Components/Footer.jsp" %>

    </body>
</html>
