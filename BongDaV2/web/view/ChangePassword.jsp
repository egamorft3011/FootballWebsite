<%-- 
    Document   : ChangePassword
    Created on : Oct 28, 2021, 9:29:15 PM
    Author     : Egamorft
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                                    <li>Profile</li>
                                </ul>
                                <h1>Change Password</h1>
                            </div>
                        </div>
                    </div>	
                </div>
            </div>
        </section>
        <!--BREADCRUMBS END-->
        <div class="container">

            <div class="row">
                <div class="col-md-7">
                    <h4>Change your password</h4>
                    <form action="changepass" method="POST">
                        <div class="customer-info">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="item">
                                        <label>
                                            <span> Your username </span>
                                            <input type="text" name="username" value="${account.username}" readonly>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="item">
                                        <label>
                                            <span>Old Password</span>
                                            <input type="password" name="oldpass" placeholder="Enter old password">
                                        </label>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="item">
                                        <label>
                                            <span>New password</span>
                                            <input type="password" name="newpass" placeholder="Enter new password"></input>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="item">
                                        <label>
                                            <span>Re-enter new password</span>
                                            <input type="password" name="renewpass" placeholder="Re-enter new password"></input>
                                        </label>
                                    </div>
                                </div>
                                <c:choose>      
                                    <c:when test="${error != null && error !=''}">
                                        <p style="color: red " class="wrap">${error}</p>
                                    </c:when>
                                    <c:otherwise>
                                        <p style="color: green">${error}</p>
                                    </c:otherwise>
                                </c:choose>  
                            </div>
                            <div class="cart-total">

                                <div class="delivery-list">
                                    <button type="submit" class="proceed">Change Password<i class="fa fa-check" aria-hidden="true"></i></button>

                                </div>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="../Components/Footer.jsp" %>

    </body>
</html>
