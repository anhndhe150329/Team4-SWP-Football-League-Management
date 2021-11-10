<%-- 
    Document   : schedule
    Created on : Sep 17, 2021, 8:58:05 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Specer Template">
        <meta name="keywords" content="Specer, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Schedule</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <!-- Header End -->

            <!-- Breadcrumb Section Begin -->
            <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb-bg.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="bs-text">
                                <h2>Match Schedule</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- Schedule Section Begin -->
            <section class="schedule-section spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 left-blog-pad">
                            <div class="schedule-text">
                                <h4 class="st-title">Football League 2021</h4>
                            <c:if test="${acc.type==1}">
                                <h5 class="btn-link"><a href="schedule?op=add"> Add Match</a></h5>      
                            </c:if>

                            <div class="st-table">
                                <table>
                                    <tbody>
                                        <c:forEach items="${list}" var="m">
                                            <c:set var="h" value="${cd.getClubById(m.home)}" />
                                            <c:set var="a" value="${cd.getClubById(m.away)}" />
                                            <tr>
                                                <td class="left-team">
                                                    <img src="img/logo/${h.image}" alt="">
                                                    <h4>${h.clubName}</h4>
                                                </td>
                                                <td class="st-option">
                                                    <div class="so-text">${h.stadium}</div>
                                                    <c:if test="${m.status}">
                                                        <h4>${m.homeScore} - ${m.awayScore}</h4>
                                                    </c:if>
                                                    <c:if test="${!m.status}">
                                                        <h4>VS</h4>
                                                    </c:if>    
                                                    <div class="so-text">${m.date}</div>
                                                </td>
                                                <td class="right-team">
                                                    <img src="img/logo/${a.image}" alt="">
                                                    <h4>${a.clubName}</h4>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="match?op=view&matchId=${m.matchId}" >View</a></td>
                                                <c:if test="${acc.type==2&&(acc.favClub==m.home||acc.favClub==m.away)}">
                                                    <td><a href="squad?op=edit&mId=${m.matchId}&isHome=${acc.favClub==m.home?"true":"false"}">Update Squad</a></td>
                                                </c:if>
                                                <c:if test="${acc.type==1}">
                                                    <td><a href="schedule?op=edit&id=${m.matchId}" >Update</a></td>
                                                    <c:if test="${!m.status}">
                                                        <td><a href="schedule?op=delete&id=${m.matchId}">Delete</a></td>
                                                    </c:if>

                                                </c:if>
                                            </tr>
                                        </c:forEach>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="schedule-sidebar">
                            <div class="ss-widget">
                                <div class="section-title sidebar-title">
                                    <h5>Schedule</h5>
                                </div>
                                <ul>
                                    <li><a href="#">Saturday, 15 June 2019</a></li>
                                    <li><a href="#">Sunday, 16 June 2019</a></li>
                                    <li><a href="#">Monday, 17 June 2019</a></li>
                                    <li><a href="#">Tuesday, 18 June 2019</a></li>
                                    <li><a href="#">Wednesday, 19 June 2019</a></li>
                                    <li><a href="#">Thursday, 20 June 2019</a></li>
                                    <li><a href="#">Friday, 21 June 2019</a></li>
                                    <li><a href="#">Saturday, 22 June 2019</a></li>
                                    <li><a href="#">Sunday, 23 June 2019</a></li>
                                    <li><a href="#">Monday, 24 June 2019</a></li>
                                </ul>
                            </div>
                            <div class="ss-league">
                                <div class="section-title sidebar-title">
                                    <h5>Top Leagues</h5>
                                </div>
                                <a href="#" class="sl-item">
                                    <img src="img/flag/flag-1.jpg" alt="">
                                    <span>Afghanis</span>
                                </a>
                                <a href="#" class="sl-item">
                                    <img src="img/flag/flag-2.jpg" alt="">
                                    <span>Australia</span>
                                </a>
                                <a href="#" class="sl-item">
                                    <img src="img/flag/flag-3.jpg" alt="">
                                    <span>Qatar</span>
                                </a>
                                <a href="#" class="sl-item">
                                    <img src="img/flag/flag-4.jpg" alt="">
                                    <span>Cambodia</span>
                                </a>
                                <a href="#" class="sl-item">
                                    <img src="img/flag/flag-5.jpg" alt="">
                                    <span>Uzbekistan</span>
                                </a>
                            </div>
                            <div class="ss-widget other-sport">
                                <div class="section-title sidebar-title">
                                    <h5>Other Sport</h5>
                                </div>
                                <ul>
                                    <li><a href="#">American Football</a></li>
                                    <li><a href="#">Athletics</a></li>
                                    <li><a href="#">Aussie Rules</a></li>
                                    <li><a href="#">Baseball</a></li>
                                    <li><a href="#">Basketball</a></li>
                                    <li><a href="#">Beach Soccer</a></li>
                                    <li><a href="#">Beachvolleyball</a></li>
                                    <li><a href="#">Badminton</a></li>
                                    <li><a href="#">Boxing</a></li>
                                    <li><a href="#">Cycling</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Schedule Section End -->

        <!-- Footer Section Begin -->
        <jsp:include page="footer.jsp"></jsp:include>

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
    </body>

</html>
