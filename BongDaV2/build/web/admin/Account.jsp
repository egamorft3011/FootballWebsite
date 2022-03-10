<%-- 
    Document   : Account
    Created on : Oct 28, 2021, 7:47:57 PM
    Author     : Egamorft
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
        <!-- https://fonts.google.com/specimen/Roboto -->
        <link rel="stylesheet" href="css/fontawesome.min.css" />
        <!-- https://fontawesome.com/ -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <!-- https://getbootstrap.com/ -->
        <link rel="stylesheet" href="css/templatemo-style.css">
    </head>
    <body>
        <%@include file="../Components/HeaderAdmin.jsp" %>

        <div class="container mt-5">
            <div class="row tm-content-row">
                <div class="col-12 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                        <h2 class="tm-block-title">List of Accounts</h2>
                        <p class="text-white">Accounts</p>
                        <form action="account-manager" method="POST">
                            <select class="custom-select" onchange="this.form.submit()" name="account">
                                <c:forEach items="${listAccount}" var="account">
                                    <option ${account.username == account?"selected":""} value="${account.username}">${account.username}</option>
                                </c:forEach>
                            </select>
                        </form>
                    </div>
                </div>
            </div>
            <!-- row -->
            <div class="row tm-content-row">
                <div class="tm-block-col tm-col-account-settings">
                    <div class="tm-bg-primary-dark tm-block tm-block-settings">
                        <h2 class="tm-block-title">Account Settings</h2>
                        <form action="account-manager" class="tm-signup-form row" method="POST">
                            <div class="form-group col-lg-6">
                                <label for="username">Account Name</label>
                                <input
                                    id="name"
                                    name="name"
                                    type="text"
                                    class="form-control validate"
                                    value="${account.username}"
                                    />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="fname">Account Full Name</label>
                                <input
                                    id="fname"
                                    name="fname"
                                    type="text"
                                    class="form-control validate"
                                    />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="email">Account email</label>
                                <input
                                    id="email"
                                    name="email"
                                    type="email"
                                    class="form-control validate"
                                    />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="phone">Phone</label>
                                <input
                                    id="phone"
                                    name="phone"
                                    type="text"
                                    class="form-control validate"
                                    />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="address">Address</label>
                                <input
                                    id="address"
                                    name="address"
                                    type="text"
                                    class="form-control validate"
                                    />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="role">Role</label>
                                <select class="custom-select">
                                    <option value="">Admin</option>
                                    <option value="">Customer</option>
                                </select>
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="password">Password</label>
                                <input
                                    id="password"
                                    name="password"
                                    type="password"
                                    class="form-control validate"
                                    />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="repassword">Re-enter Password</label>
                                <input
                                    id="repassword"
                                    name="repassword"
                                    type="password"
                                    class="form-control validate"
                                    />
                            </div>
                            <p> ${mess}</p>
                            <div class="col-12">
                                <button
                                    type="submit"
                                    class="btn btn-primary btn-block text-uppercase"
                                    >
                                    Update This Account
                                </button>
                            </div>
                            <div class="col-12" style="margin-top: 30px">
                                <button
                                    type="submit"
                                    class="btn btn-primary btn-block text-uppercase"
                                    >
                                    Delete This Account
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/jquery-3.3.1.min.js"></script>
        <!-- https://jquery.com/download/ -->
        <script src="js/bootstrap.min.js"></script>
        <!-- https://getbootstrap.com/ -->
    </body>
</html>
