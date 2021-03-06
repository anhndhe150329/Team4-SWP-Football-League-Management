<%-- 
    Document   : blog-details
    Created on : Sep 17, 2021, 9:01:49 PM
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
        <title>Blog</title>

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
        <jsp:include page="header.jsp"></jsp:include>
            <!-- Header End -->

            <!-- Blog Details Hero Section Begin -->
            <section class="blog-hero-section set-bg" data-setbg="img/blog/details/details-hero.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="bh-text">
                                <h2>${list.title}</h2>
                            <ul>
                                <li><i class="fa fa-calendar"></i> ${list.date}</li>
                                <li><i class="fa fa-edit"></i> 3 Comment</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Blog Details Hero Section End -->

        <!-- Blog Details Section Begin -->
        <section class="blog-details-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 left-blog-pad">
                        <div class="bd-text">
                            <div class="bd-title">
                                <p>${list.content}</p>
                            </div>
                            <div class="bd-pic">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="${list.image}" alt="">
                                    </div>
                                    <div class="col-md-8">
                                        <img src="${list.image}" alt="">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <img src="img/blog/details/details-3.jpg" alt="">
                                            </div>
                                            <div class="col-sm-6">
                                                <img src="img/blog/details/details-4.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="bd-more-title">
                                <p>${list.content}</p>
                                <p>${list.content}.</p>
                                <p>${list.content}.</p>
                                <p>${list.content}.</p>
                            </div>
                            <div class="bd-tags">
                                <a href="#">Multipopuse</a>
                                <a href="#">Design</a>
                                <a href="#">Ideas</a>
                            </div>
                            <div class="comment-option">
                                <h4>Comments</h4>
                                <c:forEach items="${comments}" var="com">
                                <div class="single-comment-item second-comment ">
                                    <div class="sc-author">
                                        <img src="img/blog/details/comment/comment-3.jpg" alt="">
                                    </div>
                                    <div class="sc-text">
                                        <span>${com.date}</span>
                                        <h5>${com.username}</h5>
                                        <p>${com.content}</p>
                                      
                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                            <c:if test="${acc.type!=1}">
                                <div class="comment-form">
                                   <h4>Leave A Comment</h4>
                                   <c:if test="${acc==null}" >
                                       <div class="row">
                                        <div class="col-lg-12">
                                            <h5>Please <a href="login">Sign in</a> before comment</h5>
                                        </div>
                                    </div>
                                   </c:if>
                                   <c:if test="${acc!=null}">
                                       <form action="blog?action=insertcomment&id1=${blogpost_id}" method="Post">
                                       <div class="row">

                                        <div class="col-lg-12">
                                            
                                            <input  name="content1">
                                    
                                            <button type="submit">Post Comment</button>
                                        </div>
                                    </div>
                                    </form>
                                   </c:if>
                                    
                                </div>
                            </c:if>
                            <%--<c:if test="${acc.type==1}">--%>
<!--                                <div class="comment-form">
                                    <h4>Update </h4>
                                    <form action="blog?action=detail&pid=${c.id_post}">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <input type="text" placeholder="Title" name="title" value="${list.title}">
                                            </div>
                                            <div class="col-lg-6">
                                                <input type="text" placeholder="Image" name="img" value="${list.image}"   >
                                            </div>
                                            <div class="col-lg-12">
                                                <input style="height: 100px;" placeholder="Content" name="content" value="${list.content}"/>
                                                <button type="submit">Save</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>-->
                            <%--</c:if>--%>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="blog-sidebar">
                                <div class="bs-categories">
                                    <div class="section-title sidebar-title">
                                        <h5>Categories</h5>
                                    </div>
                                    <ul>
                                        <li><a href="#">Fool Ball</a></li>
                                        <li><a href="#">Soccer</a></li>

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
                                    <div class="news-item">
                                        <div class="ni-pic">
                                            <img src="img/news/ln-1.jpg" alt="">
                                        </div>
                                        <div class="ni-text">
                                            <h5><a href="#">How To Quit Smoking Using Zyban</a></h5>
                                            <ul>
                                                <li><i class="fa fa-calendar"></i> ${list.date}</li>
                                                <li><i class="fa fa-edit"></i> 3 Comment</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="news-item">
                                        <div class="ni-pic">
                                            <img src="img/news/ln-2.jpg" alt="">
                                        </div>
                                        <div class="ni-text">
                                            <h5><a href="#">Decorate For Less With Art Posters</a></h5>
                                            <ul>
                                                <li><i class="fa fa-calendar"></i> ${list.date}</li>
                                                <li><i class="fa fa-edit"></i> 3 Comment</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="news-item">
                                        <div class="ni-pic">
                                            <img src="img/news/ln-3.jpg" alt="">
                                        </div>
                                        <div class="ni-text">
                                            <h5><a href="#">Home Business Advertising Ideas</a></h5>
                                            <ul>
                                                <li><i class="fa fa-calendar"></i> ${list.date}</li>
                                                <li><i class="fa fa-edit"></i> 3 Comment</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="news-item">
                                        <div class="ni-pic">
                                            <img src="img/news/ln-4.jpg" alt="">
                                        </div>
                                        <div class="ni-text">
                                            <h5><a href="#">Lasik Doesn T Stop Your Eyes From Aging</a></h5>
                                            <ul>
                                                <li><i class="fa fa-calendar"></i> ${list.date}</li>
                                                <li><i class="fa fa-edit"></i> 3 Comment</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="bs-popular-tag">
                                    <div class="section-title sidebar-title">
                                        <h5>Popular Tag</h5>
                                    </div>
                                    <div class="tags">
                                        <a href="#">Seagame</a>
                                        <a href="#">Fifa</a>
                                        <a href="#">World Cup 2021</a>
                                        <a href="#">Championship</a>
                                        <a href="#">2021</a>
                                        <a href="#">Qatar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Blog Details Section End -->

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
