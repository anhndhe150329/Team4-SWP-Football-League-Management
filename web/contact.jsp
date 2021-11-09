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
    <title>Contact</title>

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
    <div style="width: 100%"><iframe width="100%" height="500" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=500&amp;hl=en&amp;q=FPT%20University,%20%C4%90CT08,%20Th%E1%BA%A1ch%20Th%E1%BA%A5t,%20H%C3%A0%20N%E1%BB%99i+(FLM%20Team)&amp;t=k&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe></div>
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
                            <h5>Hola Office</h5>
                            <ul>
                                <li>Hoa Lac Hi-tech Park, Thach That, Hanoi, Vietnam</li>
                                <li>+(12) 345 6789 10</li>
                                <li>FPT@fpt.edu.vn </li>
                            </ul>
                        </div>
                        <div class="ci-address">
                            <h5>Long Bien Office</h5>
                            <ul>
                                <li>Long Bien, Hanoi, Vietnam</li>
                                <li>+(12) 345 6789 10</li>
                                <li>FPT@fpt.edu.vn</li>
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