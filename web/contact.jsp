<%-- 
    Document   : contact
    Created on : Sep 17, 2021, 9:00:55 PM
    Author     : asus
--%>

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

    <!-- Map Section Begin -->
    <div class="map">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3010.271618925628!2d-73.6794031851738!3d41.019313126695636!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c29772c9aecd8b%3A0x7bb929f83bd76a38!2sBetsy%20Brown%20Rd%2C%20Rye%2C%20NY%2010573%2C%20USA!5e0!3m2!1sen!2sbd!4v1580843692833!5m2!1sen!2sbd"
            height="500" style="border:0;" allowfullscreen=""></iframe>
    </div>
    <!-- Map Section End -->

    <!-- Contact Section Begin -->
    <section class="contact-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="contact-form">
                        <h2>Contact Form</h2>
                        <form action="#">
                            <div class="group-in">
                                <label for="name">Name</label>
                                <input type="text" id="name">
                            </div>
                            <div class="group-in">
                                <label for="email">Email</label>
                                <input type="text" id="email">
                            </div>
                            <div class="group-in">
                                <label for="message">Message</label>
                                <textarea id="message"></textarea>
                            </div>
                            <button type="submit">Submit Now</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="contact-info">
                        <h2>Contact Info</h2>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a
                            page when looking at its layout. The point of using Lorem Ipsum is that it has a
                            distribution of letters.</p>
                        <div class="ci-address">
                            <h5>New York Office</h5>
                            <ul>
                                <li>T8/480 Collins St, Melbourne VIC 3000, New York</li>
                                <li>1-234-567-89011</li>
                                <li>info.colorlib@gmail.com </li>
                            </ul>
                        </div>
                        <div class="ci-address">
                            <h5>Australia Office</h5>
                            <ul>
                                <li>Forrest Ray, 191-103 Integer Rd, Corona Australia</li>
                                <li>1-234-567-89011</li>
                                <li>info.colorlib@gmail.com </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

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