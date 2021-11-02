<%-- 
    Document   : club
    Created on : Sep 17, 2021, 9:01:25 PM
    Author     : asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Specer Template">
        <meta name="keywords" content="Specer, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Specer | Template</title>

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
                                <h2>Club Detail</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- Club Section Begin -->
            <section class="club-section spad">
                <div class="container">
                    <div class="club-content">
                    <c:if test="${acc.type==2&&acc.favClub==c.clubId}">
                        <a href="club?op=edit&id=${c.clubId}">Edit</a>
                    </c:if>
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="cc-pic">
                                <img src="img/logo/${c.image}" alt="">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="cc-text">
                                <div class="ct-title">
                                     <li>
                                    <a  href="history?op=view&id=${c.clubId}" >History</a>
                                </li>
                                    <h3>${c.clubName}</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
                                        irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                        pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                                        deserunt mollit anim id est laborum. </p>
                                </div>
                                <div class="ct-widget">
                                    <ul>
                                        <li>
                                            <h5>Established</h5>
                                            <p>Since 1987</p>
                                        </li>
                                        <li>
                                            <h5>Former President</h5>
                                            <p>John Martin</p>
                                        </li>
                                        <li>
                                            <h5>A skipper</h5>
                                            <p>Jack Hadison</p>
                                        </li>
                                        <li>
                                            <h5>Total Matches</h5>
                                            <p>78</p>
                                        </li>
                                        <li>
                                            <h5>Location</h5>
                                            <p>Brasilia, Brazil</p>
                                        </li>
                                        <li>
                                            <h5>Social</h5>
                                            <div class="cw-social">
                                                <a href="#"><i class="fa fa-facebook"></i></a>
                                                <a href="#"><i class="fa fa-twitter"></i></a>
                                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                                                <a href="#"><i class="fa fa-google"></i></a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <c:if test="${acc.type==2&&acc.favClub==c.clubId}">
                    <a href="player?op=add">Add Player</a>
                </c:if>
                <div class="club-tab-list">
                    <div class="row">
                        <div class="col-lg-8 m-auto">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#tabs-0" role="tab">All</a>
                                </li>
                                <c:forEach items="${pd.getAllPos()}" var="pos">
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#tabs-${pos.posId}" role="tab">${pos.posName}</a>
                                    </li>
                                </c:forEach>
                                   
                            </ul><!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane active" id="tabs-0" role="tabpanel">
                                    <div class="club-tab-content">
                                        <c:forEach items="${pd.getPbyClubPos(c.clubId,0)}" var="p">
                                            <div class="ct-item">
                                                <div class="ci-text">
                                                    <img src="img/player/${p.image}" alt="">
                                                    <h5>${p.playerName}</h5>
                                                </div>
                                                <div class="ci-name">${pd.getPos(p.pos).posName}</div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                                <c:forEach items="${pd.getAllPos()}" var="pos">
                                    <div class="tab-pane" id="tabs-${pos.posId}" role="tabpanel">
                                        <div class="club-tab-content">
                                            <c:forEach items="${pd.getPbyClubPos(c.clubId,pos.posId)}" var="p">
                                                <div class="ct-item">
                                                    <div class="ci-text">
                                                        <img src="img/player/${p.image}" alt="">
                                                        <h5>${p.playerName}</h5>
                                                    </div>
                                                    <div class="ci-name">${pd.getPos(p.pos).posName}</div>
                                                </div> 
                                                <c:if test="${acc.type==2&&acc.favClub==c.clubId}">
                                                    <a href="player?op=edit&id=${p.playerId}">Edit</a>
                                                    <a href="player?op=delete&id=${p.playerId}">Delete</a>
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Club Section End -->

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
