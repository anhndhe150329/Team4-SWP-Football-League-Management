<%-- 
    Document   : index
    Created on : Sep 17, 2021, 8:56:23 PM
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
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Offcanvas Menu Section Begin -->
        <div class="offcanvas-menu-overlay"></div>
        <div class="offcanvas-menu-wrapper">
            <div class="canvas-close">
                <i class="fa fa-close"></i>
            </div>
            <div class="search-btn search-switch">
                <i class="fa fa-search"></i>
            </div>
            <div class="header__top--canvas">
                <div class="ht-info">
                    <ul>
                        <li>2021</li>
                        <li><a href="login">Sign in</a></li>
                        <li><a href="usertype">Sign up</a></li>
                    </ul>
                </div>
                <div class="ht-links">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-vimeo"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-google-plus"></i></a>
                    <a href="#"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <ul class="main-menu mobile-menu">
                <li class="active"><a href="home">Home</a></li>
                <li><a href="club?op=list">Club</a>
                </li>
                <li><a href="./schedule.jsp">Schedule</a></li>
                <li><a href="./result.jsp">Results</a></li>

                <li><a href="#">Sport</a></li>
                <li><a href="#">Pages</a>
                    <ul class="dropdown">
                        <li><a href="./blog.jsp">Blog</a></li>
                        <li><a href="./blog-details.jsp">Blog Details</a></li>
                        <li><a href="schedule">Schedule</a></li>
                        <li><a href="./result.jsp">Results</a></li>
                    </ul>
                </li>

                <li><a href="./contact.jsp">Contact</a></li>
            </ul>
            <div id="mobile-menu-wrap"></div>
        </div>
        <!-- Offcanvas Menu Section End -->

        <!-- Header Section Begin -->
        <header class="header-section">
            <div class="header__top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="ht-info">
                                <ul>
                                    <li>20:00 - 18/9/2021</li>
                                        <c:if test="${sessionScope.acc==null}">
                                        <li><a href="login">Sign In</a></li>
                                        <li><a href="usertype">Sign Up</a></li> 
                                        </c:if>
                                        <c:if test="${sessionScope.acc!=null}">
                                        <li >
                                            <a href="logout">Log Out</a>
                                        </li>
                                        <li><a href="changepass">Change Password</a></li>
                                            <c:if test="${sessionScope.acc.type == 1}">
                                            <li><a href="listrequest">List Request</a></li>
                                            </c:if>
                                            <c:if test="${sessionScope.acc.type == 2}">
                                            <li>
                                                <c:if test="${acc.favClub==0}">
                                                    <a href="club?op=add">Your Club</a>
                                                </c:if>
                                                <c:if test="${acc.favClub!=0}">
                                                    <a href="club?op=detail&id=${acc.favClub}">Your Club</a>
                                                </c:if> 
                                            </li>
                                        </c:if>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="ht-links">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-vimeo"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-google-plus"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="header__nav">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2">
                            <div class="logo">
                                <a href="home"><img src="img/logo.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-10">
                            <div class="nav-menu">
                                <ul class="main-menu">

                                    <li class="${active=="home"?"active":""}"><a href="home">Home</a></li>
                                    <li class="${active=="club"?"active":""}"><a href="club?op=list">Club</a></li>
                                    <li class="${active=="schedule"?"active":""}"><a href="schedule?op=view">Schedule</a></li>
                                    <li class="${active=="player"?"active":""}"><a href="player?op=list">Players</a></li>
                                    <li class="${active=="rank"?"active":""}"><a href="rank">Rank</a></li>
                                    <li class="${active=="profile"?"active":""}"><a href="#">Profile</a>
                                        <ul class="dropdown">
                                            <c:choose>
                                                <c:when test="${acc==null}">
                                                    <li><a href="login">Your Profile</a></li>
                                                    <li><a href="login">Your Favorite Club</a></li>
                                                    <li><a href="login"> Favorite Squad</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <li><a href="profile">Your Profile</a></li>
                                                        <c:if test="${acc.favClub!=0}">
                                                        <li><a href="club?op=detail&id=${acc.favClub}">${acc.type==2?"Your Club":"Your Favorite Club"}</a></li>
                                                        </c:if>
                                                        <c:if test="${acc.favClub==0&&acc.type==2}">
                                                        <li><a href="club?op=add">Your Club</a></li>
                                                        </c:if>
                                                        <c:if test="${acc.favClub==0&&acc.type==3}">
                                                        <li><a href="favClub?op=list">Your Favorite Club</a></li>
                                                        </c:if>
                                                        <li><a href="squad?op=edit"> Favorite Squad</a></li>
                                                        <li><a href="schedule?op=view&clubId=${acc.favClub}">Club Schedule</a></li>
                                                    </c:otherwise>
                                                </c:choose>

                                            
                                            <li><a href="./result.jsp"> Recent Results</a></li>
                                            
                                        </ul>
                                    </li>



                                    <c:if test ="${acc.type!=1}">
                                        <li class="${active=="blog"?"active":""}"><a href="#">Pages</a>
                                            <ul class="dropdown">
                                                <li><a href="blog?action=list">Blog</a></li>

                                            </ul>
                                        </li>
                                    </c:if>
                                    <c:if test ="${acc.type==1}">
                                        <li class="${active=="blog"?"active":""}"><a href="#">Pages</a>
                                            <ul class="dropdown">
                                                <li><a href="blog?action=list">Blog</a></li>
                                                <li><a href="createBlog.jsp">Create Blog</a></li>

                                            </ul>
                                        </c:if>

                                        <c:if test ="${acc.type!=1}">
                                        <li><a href="./contact.jsp">Contact Us</a></li>
                                        </c:if>



                                </ul>
                                <div class="nm-right search-switch">
                                    <i class="fa fa-search"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="canvas-open">
                        <i class="fa fa-bars"></i>
                    </div>
                </div>
            </div>
        </header>


        <!-- Search model end -->

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
    </body>

</html>