<%-- 
    Document   : EditProfile
    Created on : Oct 27, 2021, 3:23:14 PM
    Author     : Egamorft
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRJ PROJECT</title>
        <link href="css-min/EditProfile.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="EditProfile" method="POST">
            <div id="sc-edprofile">
                <h1>Edit Profile</h1>
                <div class="sc-container">
                    <input type="text" value="${sessionScope.account.username}" name="username" hidden=""/>
                    <label>Username:</label>
                    <input type="text" value="${sessionScope.account.username}" name="username" disabled/>
                    <label>Email</label>
                    <input type="text" value="${sessionScope.account.email}" name="email"/>
                    <label>Phone</label>
                    <input type="text" value="${sessionScope.account.phone}" name="phone"/>
                    <label>Enter your password</label>
                    <input type="password" placeholder="Password" required name="pass"/>
                    <label>Your full name (Display name)</label>
                    <input type="text" value="${sessionScope.account.fullname}" name="fname"/>
                    <label>Address</label>
                    <select name="address">
                        <option value="VietNam" ${sessionScope.account.address eq 'VietNam'?"selected":""}>VietNam</option>
                        <option value="USA" ${sessionScope.account.address eq 'USA'?"selected":""}>USA</option>
                        <option value="UK" ${sessionScope.account.address eq 'UK'?"selected":""}>UK</option>
                    </select>
                    <c:if test="${error != null && error !=''}">
                        <label style="color: red">${error}</label>
                    </c:if>
                    <input type="submit" value="Edit Profile" />
                </div>
            </div>
        </form>
    </body>
</html>
