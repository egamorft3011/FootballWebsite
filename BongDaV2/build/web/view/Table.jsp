<%-- 
    Document   : Table
    Created on : Oct 17, 2021, 9:13:18 PM
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
                                    <li><a href="index-2.html">Main</a>/</li>
                                    <li>League</li>
                                </ul>
                                <h1>League Table</h1>
                            </div>
                        </div>
                    </div>	
                </div>
            </div>
        </section>
        <!--BREADCRUMBS END-->


        <!--STANDING TABLE WRAP BEGIN-->

        <section class="main-match-shedule amateurs-match-shedule">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <img class="flag" src="images/common/EPL-logo.png">
                        <!--<h4>Premier league</h4>-->
                        <ul class="tab-filters" role="tablist">
                            <li class="active"><a href="#2021" role="tab" data-toggle="tab">2021</a></li>
                            <li><a href="#2020" role="tab" data-toggle="tab">2020</a></li>
                            <li><a href="#2019" role="tab" data-toggle="tab">2019</a></li>
                        </ul>
                    </div>

                    <div class="col-md-12 col-sm-12 col-xs-12 overflow-scroll standings-table">
                        <div class="tab-content">
                            <div class="tab-pane fade in active" id="2017" role="tabpanel">

                                <table class="standing-full">
                                    <tr>
                                        <th>pos</th>
                                        <th>club</th>
                                        <th>played</th>
                                        <th>won</th>
                                        <th>drawn</th>
                                        <th>lost</th>
                                        <th>gf</th>
                                        <th>ga</th>
                                        <th>gd</th>
                                        <th>points</th>
                                    </tr>
                                    <c:forEach items="${listTable}" var="table">            
                                        <tr>
                                            <td>${table.getPosition()}</td>
                                            <td style="text-align: left">
                                                <img src="images/soccer/${table.getClubLogo()}" width="30" height="30" alt="team-logo">&emsp;&emsp;&emsp;&emsp;${table.getClub()}
                                            </td>
                                            <td>${table.getMatchPlayed()}</td>
                                            <td>${table.getMatchWon()}</td>
                                            <td>${table.getMatchDrawn()}</td>
                                            <td>${table.getMatchLost()}</td>
                                            <td>${table.getGoalFor()}</td>
                                            <td>${table.getGoalAgainst()}</td>
                                            <td>${table.getGoalDifferent()}</td>
                                            <td class="points"><span>${table.getPoint()}</span></td>
                                        </tr>
                                    </c:forEach>
                                </table>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!--STANDING TABLE WRAP END-->
        <%@include file="../Components/Footer.jsp" %>

    </body>
</html>
