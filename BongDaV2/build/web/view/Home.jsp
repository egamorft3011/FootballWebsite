
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


        <div class="main-slider-section">
            <div class="main-slider">
                <div id="main-slider" class="carousel slide" data-ride="carousel" data-interval="4000">
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <div class="main-slider-caption">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="match-date">Full time score / Round 6 / Premier league</div>
                                            
                                            <div class="booking">
                                                <a href="Matches">
                                                    Match Review
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="main-slider-caption">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="match-date">1 Jan 2022 / 2:00 AM / Premier League</div>
                                            <div class="team"> Manchester United - Manchester City
                                            </div>
                                            <div id="counter" data-date="1534185200000">
                                                <ul>
                                                    <li>
                                                        <div class="digit days">15</div>
                                                        <div class="descr">days</div>
                                                    </li>
                                                    <li>
                                                        <div class="digit hours">15</div>
                                                        <div class="descr">hours</div>
                                                    </li>
                                                    <li>
                                                        <div class="digit minutes">15</div>
                                                        <div class="descr">minutes</div>
                                                    </li>
                                                    <li>
                                                        <div class="digit seconds">15</div>
                                                        <div class="descr">seconds</div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <script type="text/javascript">
                                                function getTimeRemaining(endtime) {
                                                    const total = Date.parse(endtime) - Date.parse(new Date());
                                                    const seconds = Math.floor((total / 1000) % 60);
                                                    const minutes = Math.floor((total / 1000 / 60) % 60);
                                                    const hours = Math.floor((total / (1000 * 60 * 60)) % 24);
                                                    const days = Math.floor(total / (1000 * 60 * 60 * 24));

                                                    return {
                                                        total,
                                                        days,
                                                        hours,
                                                        minutes,
                                                        seconds
                                                    };
                                                }

                                                function initializeClock(id, endtime) {
                                                    const clock = document.getElementById("counter");
                                                    const daysSpan = clock.querySelector('.digit.days');
                                                    const hoursSpan = clock.querySelector('.digit.hours');
                                                    const minutesSpan = clock.querySelector('.digit.minutes');
                                                    const secondsSpan = clock.querySelector('.digit.seconds');

                                                    function updateClock() {
                                                        const t = getTimeRemaining(endtime);

                                                        daysSpan.innerHTML = t.days;
                                                        hoursSpan.innerHTML = ('0' + t.hours).slice(-2);
                                                        minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);
                                                        secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);

                                                        if (t.total <= 0) {
                                                            clearInterval(timeinterval);
                                                        }
                                                    }

                                                    updateClock();
                                                    const timeinterval = setInterval(updateClock, 1000);
                                                }

                                                const deadline = 'January 1 2100 2:00:00 GMT+7'
                                                initializeClock('counter', deadline);
                                            </script>
                                            <div class="booking">
                                                <a href="CMS">
                                                    Bet now
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item">
                            <div class="main-slider-caption">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="match-date">Up coming matches / Round 7 / Premier League</div>
                                            
                                            <div class="booking">
                                                <a href="Schedule">
                                                    View schedule
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="event-nav">
                        <div class="container">
                            <div class="row no-gutter carousel-indicators">

                                <div class="col-sm-4 active" data-slide-to="0" data-target="#main-slider">
                                    <a href="#" class="nav-item">
                                        <span class="championship">Full-time result</span>
                                        
                                        <!-- <span class="game-result">(5-4) penalties</span> -->
                                    </a>
                                </div>

                                <div class="col-sm-4" data-slide-to="1" data-target="#main-slider">
                                    <a href="#" class="nav-item">
                                        <span class="championship">Next match</span>
                                        <span class="teams-wrap">

                                            <span class="team"><img src="images/soccer/Team13.png"
                                                                    alt="team-logo"></span>
                                            <span class="score">
                                                <span>VS</span>
                                            </span>

                                            <span class="team1">
                                                <span><img src="images/soccer/Team12.png" alt="team-logo"></span>
                                            </span>

                                        </span>
                                        <span class="game-result">1 Jan 2022 / 2:00 AM / Premier league</span>
                                    </a>
                                </div>

                                <div class="col-sm-4" data-slide-to="2" data-target="#main-slider">
                                    <a href="#" class="nav-item">
                                        <span class="championship">Upcoming match</span>
                                        <c:forEach items="${listMatches}" var="listMatches" begin="0" end="0">
                                            <span class="teams-wrap">
                                                <span class="team"><img src="images/soccer/${listMatches.getHlogo()}"
                                                                        alt="${listMatches.getHomeTeam()}"></span>
                                                <span class="score">
                                                    <span>VS</span>
                                                </span>

                                                <span class="team1">
                                                    <span><img src="images/soccer/${listMatches.getAlogo()}" alt="${listMatches.getAwayTeam()}"></span>
                                                </span>
                                            </span>
                                        </c:forEach>
                                        <span class="game-result">Round 7 - Premier league</span>
                                    </a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--MAIN MACTH SHEDULE BEGIN-->

        <section class="main-match-shedule">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <h6>Next match</h6>

                        <div class="main-next-match bg-cover">
                            <img src="images/soccer/next-match-bg.jpg" class="next-match-background-img" alt="next-image">
                            <div class="wrap">
                                <div class="place">Anfield Stadium</div>
                                <div class="date">3 october 2021 / 10:30 PM</div>
                                <c:forEach items="${listMatches}" var="listMatches" begin="0" end="0">
                                    <div class="teams-wrap">
                                        <a class="team">
                                            <span>${listMatches.getHomeTeam()}</span>
                                            <span><img src="images/soccer/${listMatches.getHlogo()}" alt="${listMatches.getHomeTeam()}"></span>
                                        </a>
                                        <div class="vs">
                                            vs
                                        </div>
                                        <a class="team1">
                                            <span><img src="images/soccer/${listMatches.getAlogo()}" alt="${listMatches.getAwayTeam()}"></span>
                                            <span>${listMatches.getAwayTeam()}</span>
                                        </a>
                                    </div>
                                </c:forEach>
                                <a href="schedule" class="booking">UPCOMING MATCH</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <h6>Latest matches result</h6>
                        <c:forEach items="${listMatches}" var="listMatches" begin="1" end="5">
                            <div class="main-lates-matches">
                                <a href="#" class="item">
                                    <span class="championship">Premier league - Round 6</span>
                                    <span class="teams-wrap">
                                        <span class="team">
                                            <span>
                                                <img src="images/soccer/${listMatches.getHlogo()}" alt="team-image">
                                            </span>
                                            <span>${listMatches.getHomeTeam()}</span>
                                        </span>
                                        <span class="score">
                                            <span>${listMatches.getHomeGoal()}:${listMatches.getAwayGoal()}</span>

                                        </span>
                                        <span class="team1">
                                            <span>${listMatches.getAwayTeam()}</span>
                                            <span><img src="images/soccer/${listMatches.getAlogo()}" alt="team-image"></span>
                                        </span>
                                    </span>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>

        <!--MAIN MACTH SHEDULE END-->

        <!--MAIN PLAYERS STAT BEGIN-->

        <section class="main-players-stat bg-cover">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h4 class="hockey-stats-h4">Players stats</h4>


                        <div class="single-player-stats players_statistic_slider">
                            <ul class="player-filters" role="tablist">
                                <li class="active">
                                    <a href="#" role="tab" data-toggle="tab">
                                        Top scorers
                                    </a>
                                </li>

                            </ul>
                            <div class="player-stat-slider tab-content">
                                <div id="slider" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner tab-content" role="listbox">
                                        <div class="item active tab-pane" id="goalkeepers">
                                            <c:forEach items="${listPlayers}" var="players" begin="0" end="0">

                                                <div class="wrap">
                                                    <div class="stat">
                                                        <div class="top-info with_number">
                                                            <div class="number">${players.getGoal()}</div>
                                                            <a class="name">
                                                                ${players.getName()}
                                                            </a>
                                                        </div>
                                                        <div class="progress-wrap">
                                                            <img src="images/soccer/${players.getTeamLogo()}" alt="${players.getTeam()}" width="200px" >
                                                        </div>    
                                                    </div>
                                                    <div class="image">
                                                        <a title="player-image" class="club">
                                                            <img src="images/common/${players.getPlayerImage()}" alt="player-image" >
                                                        </a>
                                                    </div>
                                                </div>
                                            </c:forEach>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <h4 class="hockey-stats-h4">Best players</h4>
                        <div class="team-best-player">
                            <div class="">
                                <ul class="player-filters" role="tablist">
                                    <li class="active">
                                        <a href="#goals" role="tab" data-toggle="tab">goals</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="best-players-list tab-pane active" id="goals">

                                    <c:forEach items="${listPlayers}" var="players">

                                        <a class="item" >
                                            <span class="club"><img src="images/soccer/${players.getTeamLogo()}" alt="${players.getTeam()}" width="30px" ></span>
                                            <span>${players.getName()}</span>
                                            <span class="achievement">${players.getGoal()}</span>
                                        </a>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--MAIN PLAYERS STAT END-->



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







        <%@include file="../Components/Footer.jsp" %>


    </body>
</html>
