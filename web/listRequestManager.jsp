<%-- 
    Document   : listRequestManager
    Created on : Oct 5, 2021, 3:50:07 PM
    Author     : asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/style2.css" rel="stylesheet">
        <link href="css/colors.css" rel="stylesheet">
    </head>
    
    <body>



        <div class="container-fluid text-center"    >
            <table class="table table-bordered table-hover">

                <tr class="table-inverse">
                    <th>Username</th>
                    <th>Password</th>               
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Email</th>
                    <th>Controller</th>

                    <th>  Action</th>
                </tr>
                <c:forEach items="${requestScope.allrequest}" var="c" varStatus="loop">

                    <tr>
                        <td>${c.username}</td>
                        <td><input type="password" value="${c.password}" readonly></td>
                        <td>${c.name}</td>
                        <td>${c.gender}</td>
                        <td>${c.email}</td>
                        <td>
                            <c:if test="${c.type==4}">
                                <p>Pending</p>
                            </c:if>

                        </td>

                        <td> 
                            <a href="request?action=accept&ida=${c.userId}">Accept</a>&nbsp;&nbsp;&nbsp;
                            <a href="request?action=reject&idr=${c.userId}">Reject</a>
                        </td>
                    </tr>
                </c:forEach>

            </table>
            <a href="index.jsp" class="btn btn-gradient grd4 withradius secbtn">HOME</a>

    </body>
</html>

