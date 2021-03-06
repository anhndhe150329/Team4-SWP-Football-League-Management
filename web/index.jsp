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
        <title>FLM Home Page</title>

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

            <!-- Hero Section Begin -->
            <section class="hero-section set-bg" data-setbg="img/hero/hero-1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="hs-item">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="hs-text">
                                            <c:set var="home" value="${cd.getClubById(NextMatch.home)}" />
                                            <c:set var="away" value="${cd.getClubById(NextMatch.away)}" />
                                            <h4>${NextMatch.date} / 9:00 GMT+0000</h4>
                                            <h2>${home.clubName}  VS ${away.clubName} in ${home.stadium} </h2>
                                            <a href="match?op=view&matchId=${NextMatch.matchId}" class="primary-btn">More Details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero Section End -->

        <!-- Trending News Section Begin -->
        <div class="trending-news-section">
            <div class="container">
                <div class="tn-title"><i class="fa fa-caret-right"></i> Trending News</div>
                <div class="news-slider owl-carousel">
                    <div class="nt-item">Vinyl Banners With Its Different Types Kinds And Applications</div>
                    <div class="nt-item">Banners With Its Different Types Kinds And Applications</div>
                </div>
            </div>
        </div>
        <!-- Trending News Section End -->

        <!-- Match Section Begin -->
        <section class="match-section set-bg" data-setbg="img/match/match-bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="ms-content">
                            <h4>Next Match</h4>
                            <c:forEach begin="0" end="2" var="i" step="1" >
                                <c:if test="${i<ListNextMatch.size()}">
                                    <c:set var="m" value="${ListNextMatch.get(i)}" />
                                    <c:set var="home" value="${cd.getClubById(m.home)}" />
                                    <c:set var="away" value="${cd.getClubById(m.away)}" />
                                    <div class="mc-table">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td class="left-team">
                                                        <img src="img/logo/${home.image}" alt="">
                                                        <h6>${home.clubName}</h6>
                                                    </td>
                                                    <td class="mt-content">
                                                        <div class="mc-op">${home.stadium}</div>
                                                        <h4>VS</h4>
                                                        <div class="mc-op">${m.date}</div>
                                                    </td>
                                                    <td class="right-team">
                                                        <img src="img/logo/${away.image}" alt="">
                                                        <h6>${away.clubName}</h6>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </c:if>
                            </c:forEach>  
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="ms-content">
                            <h4>Recent Results</h4>
                            <c:forEach begin="0" end="2" var="i" step="1" >
                                <c:if test="${i<ListRecentMatch.size()}">
                                    <c:set var="m" value="${ListRecentMatch.get(i)}" />
                                    <c:set var="home" value="${cd.getClubById(m.home)}" />
                                    <c:set var="away" value="${cd.getClubById(m.away)}" />
                                    <div class="mc-table">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td class="left-team">
                                                        <img src="img/logo/${home.image}" alt="">
                                                        <h6>${home.clubName}</h6>
                                                    </td>
                                                    <td class="mt-content">
                                                        <div class="mc-op">${home.stadium}</div>
                                                        <h4>${m.homeScore} : ${m.awayScore}</h4>
                                                        <div class="mc-op">${m.date}</div>
                                                    </td>
                                                    <td class="right-team">
                                                        <img src="img/logo/${away.image}" alt="">
                                                        <h6>${away.clubName}</h6>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </c:if>
                            </c:forEach>  
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Match Section End -->

        <!-- Soccer Section Begin -->
        <section class="soccer-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 p-0">
                        <div class="section-title">
                            <h3>Soccer <span>Feed</span></h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-sm-6 p-0">
                        <div class="soccer-item set-bg" data-setbg="img/soccer/soccer-1.jpg">
                            <div class="si-tag">Soccer</div>
                            <div class="si-text">
                                <h5><a href="#">Counting Your Chicken Before They Hatch</a></h5>
                                <ul>
                                    <li><i class="fa fa-calendar"></i> May 19, 2021</li>
                                    <li><i class="fa fa-edit"></i> 3 Comment</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 p-0">
                        <div class="soccer-item set-bg" data-setbg="img/soccer/soccer-2.jpg">
                            <div class="si-tag">Soccer</div>
                            <div class="si-text">
                                <h5><a href="#">Hypnotherapy For Motivation Getting The Drive Back</a></h5>
                                <ul>
                                    <li><i class="fa fa-calendar"></i> May 19, 2021</li>
                                    <li><i class="fa fa-edit"></i> 3 Comment</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 p-0">
                        <div class="soccer-item set-bg" data-setbg="img/soccer/soccer-3.jpg">
                            <div class="si-tag">Soccer</div>
                            <div class="si-text">
                                <h5><a href="#">Astronomy Binoculars A Great Alternative</a></h5>
                                <ul>
                                    <li><i class="fa fa-calendar"></i> May 19, 2021</li>
                                    <li><i class="fa fa-edit"></i> 3 Comment</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 p-0">
                        <div class="soccer-item set-bg" data-setbg="img/soccer/soccer-4.jpg">
                            <div class="si-tag">Soccer</div>
                            <div class="si-text">
                                <h5><a href="#">Decorate For Less With Art Posters</a></h5>
                                <ul>
                                    <li><i class="fa fa-calendar"></i> May 19, 2021</li>
                                    <li><i class="fa fa-edit"></i> 3 Comment</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Soccer Section End -->

        <!-- Latest Section Begin -->
        <section class="latest-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="section-title">
                            <h3>Club <span>Ranking</span></h3>
                        </div>
                        <form action="home">
                            <div class="points-table">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Club</th>
                                            <th>GD</th>
                                            <th>Point</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach begin="0" end ="4" var ="i">
                                            <c:set value="${listC.get(i)}" var="rc"/>
                                            <tr>
                                                <td>${i+1}</td>
                                                <td>${cd.getClubById(rc.clubId).getClubName()}</td>
                                                <td>${rc.gd}</td>
                                                <td>${rc.point}</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                <a href="rank" class="p-all">View All</a>
                            </div></form>
                    </div>
                    <div class="col-lg-4">
                        <div class="section-title">
                            <h3>Top <span>Scorers</span></h3>
                        </div>
                        <form action="home">
                            <div class="points-table">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>No</th>                                          
                                            <th>Player</th>
                                            <th>Goal</th>
                                            <th>Club</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach begin="0" end="4" step="1" var ="i">
                                            <c:if test="${i<listTopScorer.size()}">
                                                <c:set var="T" value="${listTopScorer.get(i)}"/>
                                                <tr>
                                                    <td>${i+1}</td>
                                                    <td>${T.playerName}</td>
                                                    <td>${T.goalno}</td>                                        
                                                    <td>${T.clubName}</td>

                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                <a href="#" class="p-all">View All</a>
                            </div></form>
                    </div>
                    <div class="col-lg-4">
                        <div class="section-title">

                            <h3>Top <span>Assistants</span></h3>

                        </div>
                        <form action="home">
                            <div class="points-table">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Player Name</th>
                                            <th>Assistant</th>
                                            <th>Score</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach begin="0" end="4" step="1" var ="i">
                                            <c:if test="${i<listAs.size()}">
                                                <c:set var="Ag" value="${listAs.get(i)}"/>

                                                <tr>
                                                    <td>${i+1}</td>
                                                    <td>${pd.getPlayerbyId(Ag.id).playerName}</td>
                                                    <td>${Ag.countG}</td>
                                                    <td>1</td>
                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                <a href="#" class="p-all">View All</a>
                            </div></form>
                    </div>
                </div>
            </div>
        </section>
        <!-- Latest Section End -->

        <!-- Video Section Begin -->
        <section class="video-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h3>Hot <span>Videos</span></h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="video-slider owl-carousel">
                        <c:forEach items="${vlist}" var="v">
                            <div class="col-lg-3">
                                <div class="video-item set-bg" data-setbg="img/videos/${v.image}">
                                    <div class="vi-title">
                                        <h5>${v.content}</h5>
                                    </div>
                                    <a href="${v.link}" class="play-btn video-popup"><img
                                            src="img/videos/play.png" alt=""></a>
                                    <div class="vi-time">${v.time}</div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
            </div>
        </section>
        <!-- Video Section End -->

        <!-- Popular News Section Begin -->
        <section class="popular-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="section-title">
                            <h3>Popular <span>Post</span></h3>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="news-item popular-item set-bg" data-setbg="img/news/popular-b.jpg">
                                    <div class="ni-tag tenis">Tenis</div>
                                    <div class="ni-text">
                                        <h5><a href="#">England reach World Cup last 16 with hard-fought win over
                                                Argentina</a></h5>
                                        <ul>
                                            <li><i class="fa fa-calendar"></i> May 19, 2021</li>
                                            <li><i class="fa fa-edit"></i> 3 Comment</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="news-item">
                                    <div class="ni-pic">
                                        <img src="img/news/ln-1.jpg" alt="">
                                    </div>
                                    <div class="ni-text">
                                        <h5><a href="#">There???s a great history of the winner Sandia</a></h5>
                                        <ul>
                                            <li><i class="fa fa-calendar"></i> May 19, 2021</li>
                                            <li><i class="fa fa-edit"></i> 3 Comment</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="news-item">
                                    <div class="ni-pic">
                                        <img src="img/news/ln-2.jpg" alt="">
                                    </div>
                                    <div class="ni-text">
                                        <h5><a href="#">It???ll be a tough game and a physical game</a></h5>
                                        <ul>
                                            <li><i class="fa fa-calendar"></i> May 19, 2021</li>
                                            <li><i class="fa fa-edit"></i> 3 Comment</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="news-item">
                                    <div class="ni-pic">
                                        <img src="img/news/ln-3.jpg" alt="">
                                    </div>
                                    <div class="ni-text">
                                        <h5><a href="#">If we don???t score we can???t get frustrated</a></h5>
                                        <ul>
                                            <li><i class="fa fa-calendar"></i> May 19, 2021</li>
                                            <li><i class="fa fa-edit"></i> 3 Comment</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="news-item popular-item set-bg" data-setbg="img/news/popular-b.jpg">
                                    <div class="ni-tag football">Football</div>
                                    <div class="ni-text">
                                        <h5><a href="#">We are playing history and Argentina at the World Cup, says Phil
                                                Neville</a></h5>
                                        <ul>
                                            <li><i class="fa fa-calendar"></i> May 19, 2021</li>
                                            <li><i class="fa fa-edit"></i> 3 Comment</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="news-item">
                                    <div class="ni-pic">
                                        <img src="img/news/ln-5.jpg" alt="">
                                    </div>
                                    <div class="ni-text">
                                        <h5><a href="#">Le Havre does have a growing fan club</a></h5>
                                        <ul>
                                            <li><i class="fa fa-calendar"></i> May 19, 2021</li>
                                            <li><i class="fa fa-edit"></i> 3 Comment</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="news-item">
                                    <div class="ni-pic">
                                        <img src="img/news/ln-6.jpg" alt="">
                                    </div>
                                    <div class="ni-text">
                                        <h5><a href="#">It will be hard to break them down</a></h5>
                                        <ul>
                                            <li><i class="fa fa-calendar"></i> May 19, 2021</li>
                                            <li><i class="fa fa-edit"></i> 3 Comment</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="news-item">
                                    <div class="ni-pic">
                                        <img src="img/news/ln-7.jpg" alt="">
                                    </div>
                                    <div class="ni-text">
                                        <h5><a href="#">We???ve never seen them as organised </a></h5>
                                        <ul>
                                            <li><i class="fa fa-calendar"></i> May 19, 2021</li>
                                            <li><i class="fa fa-edit"></i> 3 Comment</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="section-title">
                            <h3>Follow <span>Us</span></h3>
                        </div>
                        <div class="follow-links">
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
                        <div class="vote-option set-bg" data-setbg="img/news/vote-bg.jpg">
                            <div class="vo-text">
                                <h5>In your opinion, which country will win this year</h5>
                                <div class="vt-item">
                                    <input type="radio" name="like-team" id="one">
                                    <label for="one">Germany</label>
                                </div>
                                <div class="vt-item">
                                    <input type="radio" name="like-team" id="two">
                                    <label for="two">Brazil</label>
                                </div>
                                <div class="vt-item">
                                    <input type="radio" name="like-team" id="three">
                                    <label for="three">Myanmar</label>
                                </div>
                                <div class="vt-item">
                                    <input type="radio" name="like-team" id="four">
                                    <label for="four">Argentina</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Popular News Section End -->

        <!-- Footer Section Begin -->
        <jsp:include page="footer.jsp"></jsp:include>
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