<%-- 
    Document   : Matches
    Created on : Oct 15, 2021, 11:22:35 PM
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
                                    <li><a href="Home">Main</a>/</li>
                                    <li>Matches</li>
                                </ul>
                                <h1>Result</h1>
                            </div>
                        </div>
                    </div>	
                </div>
            </div>
        </section>
        <!--BREADCRUMBS END-->


        <!--MAIN MATCH SHEDULE BEGIN-->
        <section class="main-match-shedule amateurs-match-shedule">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-sm-9 col-xs-9">

                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <img class="flag" src="images/common/EPL-logo.png">

                        <ul class="tab-filters" role="tablist">
                            <li><a href="#all" role="tab" data-toggle="tab" aria-expanded="true">All</a></li>
                            <li class="active"><a href="#premierleague" role="tab" data-toggle="tab" aria-expanded="true">premier league</a></li>
                        </ul>

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
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <h4>Round ${page}: EPL </h4> 
                    </div>
                    <c:forEach items="${listMatchess}" var="matches">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="main-lates-matches">
                                <a href="#" class="item">
                                    <span class="teams-wrap">
                                        <span class="team">
                                            <span>
                                                <img src="images/soccer/${matches.getHlogo()}" alt="${matches.getHomeTeam()}">
                                            </span>
                                            <span>${matches.getHomeTeam()}</span>
                                        </span>
                                        <span class="score">
                                            <span>${matches.getHomeGoal()}:${matches.getAwayGoal()}</span>

                                        </span>
                                        <span class="team1">
                                            <span>${matches.getAwayTeam()}</span>
                                            <span><img src="images/soccer/${matches.getAlogo()}" alt="${matches.getAwayTeam()}"></span>
                                        </span>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

        </section>
        <%@include file="../Components/Footer.jsp" %>

    </body>
</html>
