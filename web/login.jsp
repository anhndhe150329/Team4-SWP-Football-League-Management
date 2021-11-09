<%-- 
    Document   : login
    Created on :  2021, 9:17:07 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="img/icons/favicon.ico"/>
        <!--===============================================================================================-->
       
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>

        <%
            String err = "";
            if (request.getAttribute("err") != null) {
                err = (String) request.getAttribute("err");
            }
        %>
        <div class="container-login100" style="background-image: url('img/bg-01.jpg');">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
                <form class="login100-form validate-form" action="login" method="post">

                    <span class="login100-form-title p-b-37">
                        Sign In
                    </span>
                    <c:set var="cookie" value="${pageContext.request.cookies}"/>
                    <div class="wrap-input100 validate-input m-b-20" data-validate="Enter username ">
                        <input class="input100" value="${cookie.user1.value}" type="text" name="username" placeholder="Username " >
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-25" data-validate = "Enter password">
                        <input class="input100" value="${cookie.pass.value}" type="password" name="password" placeholder="Password" >
                        <span class="focus-input100"></span>
                    </div>

                    <input ${(cookie.rem.value eq 'ON')?"checked":""} 
                        type="checkbox" name="rem" value="ON"  style="font-size: 20px"  /> Remember me
                    <p class="text-danger">${mess} </p>  

                    <% String mess = "";
                        if (request.getAttribute("mess") != null) {
                            mess = (String) request.getAttribute("mess");%>
                    <li style="color: red"><%=mess%></li>	
                        <% }%>
                    
                    <li style="color: green">${mess1}</li>	
                       
                    <li style="color: red"><%=err%></li>
                    <br>

                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn" type="submit">
                            Sign In
                        </button>
                    </div>
                </form> 
                <div class="text-center p-t-57 p-b-20">
                    <span class="txt1">
                        Or login with
                    </span>
                </div>

                <div class="flex-c p-b-112">
                    <a href="#" class="login100-social-item">
                        <i class="fa fa-facebook-f"></i>
                    </a>

                    <a href="#" class="login100-social-item">
                        <img src="img/icons/icon-google.png" alt="GOOGLE">
                    </a>
                </div>

                <div class="text-center">
                    <a href="usertype" class="txt2 hov1">
                        Sign Up
                    </a>
                </div>
                    <div class="text-center">
                    <a href="forgotpass" class="txt2 hov1">
                        Forgot Password
                    </a>
                </div>



            </div>
        </div>




        <div id="dropDownSelect1"></div>
        
        <!--===============================================================================================-->
       
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    </body>
</html>