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
      <jsp:include page="header.jsp"></jsp:include>
    <!-- Header End -->

    <!-- Blog Details Hero Section Begin -->
    <section class="blog-hero-section set-bg" data-setbg="img/blog/details/details-hero.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bh-text">
                        <h2>${listD.title}</h2>
                        <ul>
                            <li><i class="fa fa-calendar"></i> ${listD.date}</li>
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
                            <p>${listD.content}</p>
                        </div>
                        <div class="bd-pic">
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="${listD.image}" alt="">
                                </div>
                                <div class="col-md-8">
                                    <img src="img/blog/details/details-2.jpg" alt="">
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
                            <p>${listD.content}</p>
                            <p>Jill Scott should have doubled the lead soon after but headed Alex Greenwood's delivery
                                over, before England saw the match out with relative ease to leave them needing just a
                                point in their final game with Japan, next Wednesday, to top Group D.</p>
                            <p>Straight from kick off, England looked to dominate against a defensive Argentina side,
                                but while their build-up was much improved from their shaky win over Scotland last
                                Sunday, their final ball was still lacking.</p>
                            <p>Jill Scott should have doubled the lead soon after but headed Alex Greenwood's delivery
                                over, before England saw the match out with relative ease to leave them needing just a
                                point in their final game with Japan, next Wednesday, to top Group D.</p>
                            <p>Straight from kick off, England looked to dominate against a defensive Argentina side,
                                but while their build-up was much improved from their shaky win over Scotland last
                                Sunday, their final ball was still lacking.</p>
                        </div>
                        <div class="bd-tags">
                            <a href="#">Multipopuse</a>
                            <a href="#">Design</a>
                            <a href="#">Ideas</a>
                        </div>
                        <div class="comment-option">
                            <h4>2 Comments</h4>
                            <div class="single-comment-item first-comment">
                                <div class="sc-author">
                                    <img src="img/blog/details/comment/comment-1.jpg" alt="">
                                </div>
                                <div class="sc-text">
                                    <span>${listD.date}</span>
                                    <h5>Brandon Kelley</h5>
                                    <p>Vasse Felix chief executive, Paul Holmes a Court said no plans have yet been made
                                        for the buildings on the property.</p>
                                    <a href="#" class="comment-btn like-btn">Like</a>
                                    <a href="#" class="comment-btn">Reply</a>
                                </div>
                            </div>
                            <div class="single-comment-item reply-comment">
                                <div class="sc-author">
                                    <img src="img/blog/details/comment/comment-2.jpg" alt="">
                                </div>
                                <div class="sc-text">
                                    <span>${listD.date}</span>
                                    <h5>Brandon Kelley</h5>
                                    <p>Vasse Felix chief executive, Paul Holmes a Court said no plans have yet been made
                                        for the buildings on the property.</p>
                                    <a href="#" class="comment-btn like-btn">Like</a>
                                    <a href="#" class="comment-btn">Reply</a>
                                </div>
                            </div>
                            <div class="single-comment-item second-comment ">
                                <div class="sc-author">
                                    <img src="img/blog/details/comment/comment-3.jpg" alt="">
                                </div>
                                <div class="sc-text">
                                    <span>27 Aug 2019</span>
                                    <h5>Brandon Kelley</h5>
                                    <p>Vasse Felix chief executive, Paul Holmes a Court said no plans have yet been made
                                        for the buildings on the property.</p>
                                    <a href="#" class="comment-btn like-btn">Like</a>
                                    <a href="#" class="comment-btn">Reply</a>
                                </div>
                            </div>
                        </div>
                        <div class="comment-form">
                            <h4>Leave A Comment</h4>
                            <form action="#">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <input type="text" placeholder="Name">
                                    </div>
                                    <div class="col-lg-6">
                                        <input type="text" placeholder="Email">
                                    </div>
                                    <div class="col-lg-12">
                                        <textarea placeholder="Comment"></textarea>
                                        <button type="submit">Post Comment</button>
                                    </div>
                                </div>
                            </form>
                        </div>
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
                            <div class="news-item">
                                <div class="ni-pic">
                                    <img src="img/news/ln-1.jpg" alt="">
                                </div>
                                <div class="ni-text">
                                    <h5><a href="#">How To Quit Smoking Using Zyban</a></h5>
                                    <ul>
                                        <li><i class="fa fa-calendar"></i> ${listD.date}</li>
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
                                        <li><i class="fa fa-calendar"></i> ${listD.date}</li>
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
                                        <li><i class="fa fa-calendar"></i> ${listD.date}</li>
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
                                        <li><i class="fa fa-calendar"></i> ${listD.date}</li>
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
