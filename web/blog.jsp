<%-- 
    Document   : blog
    Created on : Sep 17, 2021, 9:01:36 PM
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
    <style>
        .bi-text p{
            white-space: nowrap; 
            width: 50px; 
            overflow: hidden;
            text-overflow: ellipsis; 

        }
    </style>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <!-- Header End -->

            <!-- Breadcrumb Section Begin -->
            <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb-bg.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="bs-text">
                                <h2>Blog</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- Blog Section Begin -->
            <section class="blog-section spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 left-blog-pad">
                            <div class="large-blog set-bg" data-setbg="img/blog/blog-1.jpg">
                                <div class="bi-tag">Soccer</div>
                                <div class="bi-text">
                                    <h3><a href="./blog-details.jsp">England Women 1-0 Argentina Women: Taylor guarantees Lionesses' path to last
                                            16</a></h3>
                                    <ul>
                                        <a href="" style="text-decoration: none; margin-right: 10px">
                                            <span style="font-size:20px">&#128077;</span>
                                        </a>

                                        <li><i class="fa fa-calendar"></i> May 19, 2019</li>
                                        <li><i class="fa fa-edit"></i> 3 Comment</li>


                                        </a>
                                    </ul>
                                </div>
                            </div>
                            <div class="blog-items">
                            <c:forEach items="${requestScope.all}" var="c">
                                <div class="single-item">

                                    <div class="bi-pic">
                                        <img src="${c.image}" >
                                    </div>
                                    <div class="bi-text">
                                        <h4><a href="blog?action=detail?pid=${c.id_post}">${c.title}</a></h4>
                                        <ul>

                                            <li><i class="fa fa-calendar"></i> ${c.date}</li>
                                           
                                            <a href="like?action=dislike&pid=${c.id_post}" style="text-decoration: none; margin-right: 10px">
                                                <span style="font-size:20px">&#128077;</span>
                                            </a>
                                            
                                            
                                                <a href="like?action=likef&pid=${c.id_post}">
                                                    <i class="fa fa-thumbs-up" style="color:black"></i>
                                                </a>
                                               
                                                <c:if test="${acc.type==1}">
                                                <li  style="color:blue"> <a href="blog?action=delete&pid=${c.id_post}">Delete</a></li>
                                                </c:if>
                                            <li><i class="fa fa-edit"></i> 3 Comment</li>
                                        </ul>
                                        <p>${c.content}</p>
                                    </div>

                                </div>
                            </c:forEach>
                        </div>
                        <div class="more-blog">
                            <a href="#"><i class="fa fa-long-arrow-left"></i> Older post</a>
                            <a href="#">Newer post <i class="fa fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="blog-sidebar">
                            <div class="bs-categories">
                                <div class="section-title sidebar-title">
                                    <h5>Categories</h5>
                                </div>
                                <ul>
                                    <li><a href="#">Fool Ball</a></li>
                                    <li><a href="#">Soccer</a></li>
                                    <li><a href="#">basketball</a></li>
                                    <li><a href="#">Volleyball</a></li>
                                    <li><a href="#">E-Sport</a></li>
                                </ul>
                            </div>
                            <div class="follow-links">
                                <div class="section-title sidebar-title">
                                    <h5>Follow</h5>
                                </div>
                                <ul>
                                    <li class="facebook">
                                        <i class="fa fa-facebook"></i>
                                        <div class="fl-name">Facebook</div>
                                        <span class="fl-fan">2.530 Fans</span>
                                    </li>
                                    <li class="twitter">
                                        <i class="fa fa-twitter"></i>
                                        <div class="fl-name">Twitter</div>
                                        <span class="fl-fan">2.046 Fans</span>
                                    </li>
                                    <li class="google">
                                        <i class="fa fa-google"></i>
                                        <div class="fl-name">Google</div>
                                        <span class="fl-fan">1.170 Fans</span>
                                    </li>
                                </ul>
                            </div>
                            <div class="bs-recent">
                                <div class="section-title sidebar-title">
                                    <h5>Recent Post</h5>
                                </div>
                                <c:forEach items="${requestScope.allRecent}" var="r">
                                    <div class="news-item">
                                        <div class="ni-pic">
                                            <img src="${r.image}" alt="">
                                        </div>
                                        <div class="ni-text">
                                            <h5><a href="#">${r.title}</a></h5>
                                            <ul>
                                                <li><i class="fa fa-calendar"></i> ${r.date}</li>
                                                <li><i class="fa fa-edit"></i> 3 Comment</li>
                                            </ul>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                            <div class="bs-popular-tag">
                                <div class="section-title sidebar-title">
                                    <h5>Popular Tag</h5>
                                </div>
                                <div class="tags">
                                    <a href="#">Seagame</a>
                                    <a href="#">Fifa</a>
                                    <a href="#">World Cup 2019</a>
                                    <a href="#">Championship</a>
                                    <a href="#">2019</a>
                                    <a href="#">Qatar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Blog Section End -->

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
