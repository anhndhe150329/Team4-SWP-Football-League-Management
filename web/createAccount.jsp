<%-- 
    Document   : createAccount
    Created on : Oct 8, 2021, 9:10:11 AM
    Author     : asus
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
        <title>Sign up</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            body {
                color: #999;
               /*background: url('img/bg-01_1.jpg');*/
                font-family: 'Roboto', sans-serif;
                width: 100%;
            }
            .form-control {
                border-color: #eee;
                min-height: 41px;
                box-shadow: none !important;
            }
            .form-control:focus {
                border-color: #5cd3b4;
            }
            .form-control, .btn {        
                border-radius: 3px;
            }
            .signup-form {
                width: 500px;
                margin: 0 auto;
                padding: 30px 0;
            }
            .signup-form h2 {
                color: #333;
                margin: 0 0 30px 0;
                display: inline-block;
                padding: 0 30px 10px 0;
                border-bottom: 3px solid #5cd3b4;
            }
            .signup-form form {
                color: #999;
                border-radius: 3px;
                margin-bottom: 15px;
                background: #fff;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }
            .signup-form .form-group row {
                margin-bottom: 20px;
            }
            .signup-form label {
                font-weight: normal;
                font-size: 14px;
                line-height: 2;
            }
            .signup-form input[type="checkbox"] {
                position: relative;
                top: 1px;
            }
            .signup-form .btn {        
                font-size: 16px;
                font-weight: bold;
                background: #5cd3b4;
                border: none;
                margin-top: 20px;
                min-width: 140px;
            }

            .signup-form .btn:hover, .signup-form .btn:focus {
                background: #41cba9;
                outline: none !important;
            }
            .signup-form a {
                color: #5cd3b4;
                text-decoration: underline;
            }
            .signup-form a:hover {
                text-decoration: none;
            }
            .signup-form form a {
                color: #5cd3b4;
                text-decoration: none;
            }	
            .signup-form form a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body class="signup-form" >
        <!--begin of menu-->

        <!--end of menu-->
        <div >
            <form action="register" method="post" class="form-horizontal" style="color: black">
                <div class="row">
                    <div class="col-8 offset-4">
                        <h2>Sign Up</h2>
                    </div>

                </div>			
                <div class="form-group row">
                    <label class="col-form-label col-4">Username</label>
                    <div class="col-8">
                        <input type="text" class="form-control" name="username" required="required" style="border-color: black">
                    </div>        	
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-4">Password</label>
                    <div class="col-8">
                        <input type="text" class="form-control" name="password" required="required" style="border-color: black">
                    </div>        	
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-4">Repassword</label>
                    <div class="col-8">
                        <input type="text" class="form-control" name="repassword" required="required" style="border-color: black">
                    </div>        	
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-4">Email Address</label>
                    <div class="col-8">
                        <input type="email" class="form-control" name="email" required="required" style="border-color: black">
                    </div>        	
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-4">Name</label>
                    <div class="col-8">
                        <input type="text" class="form-control" name="name" required="required" style="border-color: black">
                    </div>        	
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-4">DateOfBirth</label>
                    <div class="col-8">
                        <input type="date" class="form-control" name="dob" required="required" style="border-color: black">
                    </div>        	
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-4">Gender</label>
                    <div class="col-8" >
                        <input type="radio" name="gender" checked >Male<br>
                    <input type="radio"  name="gender">Female

                    </div>        	
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-4">Role</label>
                    <div class="col-8">
                        <select name="role">


                        <c:forEach  items="${requestScope.all}" var="f">

                            <option value="${f.typeId}">
                                <c:if test="${f.typeId==2||f.typeId ==3}">
                                     ${f.typeName}
                                </c:if>
                               
                            </option>


                        </c:forEach>



                    </select>
                    </div>        	
                </div>

               
                <div class="form-group row">
                    <div class="col-8 offset-4">
                        <p><label class="form-check-label"><input type="checkbox" required="required"> I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a>.</label></p>
                        <button type="submit" class="btn btn-primary btn-lg">Sign Up</button>


                    </div>  
                </div>
                 <c:if test="${requestScope.fail ne null}">
                        <div> <p style="color:red"> ${requestScope.fail}</p></div>
                    </c:if>
                <div class="form-group row">
                    <div class="col-8 offset-4">

                        <button type="" class="btn btn-primary btn-lg"><a href="login.jsp" style="color:white"> Sign In</a></button>



                    </div>  
                </div>	
            </form>
        </div>
    </body>
</html>