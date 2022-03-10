<%-- 
    Document   : Login
    Created on : Oct 25, 2021, 8:47:00 PM
    Author     : Egamorft
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css-min/signin.css">

    </head>
    <body>
        <br>
        <br>
        <div class="cont">
            <form action="login" method="POST">
                <div class="form sign-in">
                    <h2>Welcome</h2>
                    <label>
                        <span>Username</span>
                        <input type="text" name="username"/>
                    </label>
                    <label>
                        <span>Password</span>
                        <input type="password" name="password"/>
                    </label>
                    <c:if test="${error != null && error !=''}">
                        <label style="color: red">${error}</label>
                    </c:if>
                    <label>

                        <input type="checkbox" name="remember" value="true" class="remember"/>
                        <span>Remember me</span>

                    </label>
                    <button type="submit" class="submit">Sign In</button>
                </div>

            </form>
            <div class="sub-cont">
                <div class="img">
                    <div class="img__text m--up">

                        <h3>Don't have an account? Please Sign up!<h3>
                                </div>
                                <div class="img__text m--in">

                                    <h3>If you already has an account, just sign in.<h3>
                                            </div>
                                            <div class="img__btn">
                                                <span class="m--up">Sign Up</span>
                                                <span class="m--in">Sign In</span>
                                            </div>
                                            </div>
                                            <form action="register" method="POST">
                                                <div class="form sign-up">
                                                    <h2>Create your Account</h2>
                                                    <label>
                                                        <span>Username</span>
                                                        <input type="text" name="user" required/>
                                                    </label>
                                                    <label>
                                                        <span>Email</span>
                                                        <input type="email" name="email" required/>
                                                    </label>
                                                    <label>
                                                        <span>Password</span>
                                                        <input type="password" name="pass" required/>
                                                    </label>
                                                    <label>
                                                        <span>Confirm password</span>
                                                        <input type="password" name="repass" required/>
                                                    </label>
                                                    <label>
                                                        <span>Phone Number</span>
                                                        <input type="text" name="phone" required/>
                                                    </label>
                                                    <label>Address
                                                        <select name="address">
                                                            <option value="VietNam">VietNam</option>
                                                            <option value="USA">USA</option>
                                                            <option value="UK">UK</option>
                                                        </select>
                                                    </label>
                                                    <c:if test="${error != null && error !=''}">
                                                        <label style="color: red">
                                                            ${error}
                                                        </label>
                                                    </c:if>
                                                    <button type="submit" class="submit">Sign Up</button>

                                                </div>
                                            </form>
                                            </div>
                                            </div>

                                            <script>
                                                document.querySelector('.img__btn').addEventListener('click', function () {
                                                    document.querySelector('.cont').classList.toggle('s--signup');
                                                });
                                            </script>
                                            </body>
                                            </html>
