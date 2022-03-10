<%-- 
    Document   : Players
    Created on : Oct 19, 2021, 2:01:25 PM
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


        <!--        MAIN MENU WRAP END-->
        <!--BREADCRUMBS BEGIN-->
        <section class="image-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="info">
                            <div class="wrap">
                                <ul class="breadcrumbs">
                                    <li><a href="index-2.html">Main</a>/</li>
                                    <li>Players</li>
                                </ul>
                                <h1>Top Players</h1>
                            </div>
                        </div>
                    </div>	
                </div>
            </div>
        </section>
        <!--BREADCRUMBS END-->
        <!--PLAYER SINGLE WRAP BEGIN-->

        <section class="player-single-wrap">

            <!--PLAYER SINGLE WRAP BEGIN-->

            <section class="player-single-wrap">
                <div class="container">
                    <div class="row">
                        <img class="flag" src="images/common/EPL-logo.png">
                        <div class="col-md-12">
                            <div class="captain-bage">League</div>
                            <h4 class="player-name">top scorer</h4>
                        </div>
                        <div class="col-md-6">

                            <div class="player-photo">
                                <!--    <div class="number">15</div>-->
                                <c:forEach items="${listPlayers}" var="players" begin="0" end="0">
                                    <img class="img-responsive" src="images/common/${players.getPlayerImage()}" alt="player">
                                </c:forEach>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="player-info">

                                <h6>League top scorers</h6>
                                <div class="overflow-scroll">
                                    <table>
                                        <tr>
                                            <th>Player</th>
                                            <th class="club">Club</th>
                                            <th>Goals</th>
                                        </tr>
                                        <c:forEach items="${listPlayers}" var="players">
                                            <tr>
                                                <td>${players.getName()}</td>
                                                <td class="club"><img src="images/soccer/${players.getTeamLogo()}" width="30" height="30" alt="${players.getTeam()}"> ${players.getTeam()}</td>
                                                <td><span>${players.getGoal()}</span></td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!--PLAYER SINGLE WRAP END-->



        </section>
        <!--PLAYER SINGLE WRAP END-->
        <%@include file="../Components/Footer.jsp" %>

    </body>
</html>
