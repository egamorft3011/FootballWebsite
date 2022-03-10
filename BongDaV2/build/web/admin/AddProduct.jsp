<%-- 
    Document   : AddProduct
    Created on : Oct 28, 2021, 2:22:42 PM
    Author     : Egamorft
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700"/>
        <!-- https://fonts.google.com/specimen/Roboto -->
        <link rel="stylesheet" href="css/fontawesome.min.css" />
        <!-- https://fontawesome.com/ -->
        <link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
        <!-- http://api.jqueryui.com/datepicker/ -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <!-- https://getbootstrap.com/ -->
        <link rel="stylesheet" href="css/templatemo-style.css">
    </head>
    <body>
        <%@include file="../Components/HeaderAdmin.jsp" %>

        <div class="container tm-mt-big tm-mb-big">
            <div class="row">
                <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
                    <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                        <div class="row">
                            <div class="col-12">
                                <h2 class="tm-block-title d-inline-block">Add Product</h2>
                            </div>
                        </div>
                        <div class="col-12">

                            <form action="add-product" class="tm-edit-product-form" method="POST">
                                <div class="col-12">
                                    <div class="form-group mb-3">
                                        <label
                                            for="id"
                                            >Product ID
                                        </label>
                                        <input
                                            id="id"
                                            name="id"
                                            type="text"
                                            class="form-control validate"
                                            required
                                            />
                                    </div>
                                    <div class="form-group mb-3">
                                        <label
                                            for="code"
                                            >Product Code
                                        </label>
                                        <input
                                            id="code"
                                            name="code"
                                            type="text"
                                            class="form-control validate"
                                            required
                                            />
                                    </div>
                                    <div class="form-group mb-3">
                                        <label
                                            for="name"
                                            >Product Name
                                        </label>
                                        <input
                                            id="name"
                                            name="name"
                                            type="text"
                                            class="form-control validate"
                                            required
                                            />
                                    </div>

                                    <div class="row">
                                        <div class="form-group mb-3 col-xs-12 col-sm-6">
                                            <label
                                                for="stock"
                                                >Quantity In Stock
                                            </label>
                                            <input
                                                id="stock"
                                                name="quantity"
                                                type="text"
                                                class="form-control validate"
                                                required
                                                />
                                            <label
                                                for="price"
                                                >Price
                                            </label>
                                            <input
                                                id="price"
                                                name="price"
                                                type="text"
                                                class="form-control validate"
                                                required
                                                />
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label
                                            for="description"
                                            >Description</label
                                        >
                                        <textarea
                                            name="description"
                                            class="form-control validate"
                                            rows="3"
                                            required
                                            ></textarea>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label
                                            for="image"
                                            >Image URL
                                        </label>
                                        <input
                                            id="image"
                                            name="image"
                                            type="text"
                                            class="form-control validate"
                                            required
                                            />
                                    </div>
                                    <div class="form-group mb-3">
                                        <label
                                            for="subcategory"
                                            >SubCategory</label
                                        >
                                        <select name="subcategory"
                                                class="custom-select tm-select-accounts"
                                                id="category"
                                                >
                                            <option selected>Select SubCategory</option>
                                            <c:forEach items="${listCategories}" var="category">
                                                <c:forEach items="${category.getListSubCategories()}" var="subCategory">
                                                    <option value="${subCategory.id}">${subCategory.subCategoryName}</option>
                                                </c:forEach>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label
                                            for="category"
                                            >Category</label
                                        >
                                        <select name="category"
                                                class="custom-select tm-select-accounts"
                                                id="category"
                                                >
                                            <option selected>Select category</option>
                                            <c:forEach items="${listCategories}" var="category">
                                                <option value="1">${category.categoryName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>


                                    <c:if test="${error != null && error !=''}">
                                        <label style="color: red">${error}</label>
                                    </c:if>
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary btn-block text-uppercase">Add Product Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="js/jquery-3.3.1.min.js"></script>
        <!-- https://jquery.com/download/ -->
        <script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
        <!-- https://jqueryui.com/download/ -->
        <script src="js/bootstrap.min.js"></script>
        <!-- https://getbootstrap.com/ -->
    </body>
</html>
