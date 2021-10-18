<%-- 
    Document   : EditClub
    Created on : Oct 5, 2021, 6:40:48 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        form  {
    margin: 30px;
    
     }
    </style>
    <body>
        <%@include file="header.jsp" %>
        <form action="club" method="get">
            <input type="text" name="id" value="${c.clubId}" hidden="" />
            <label>Club Name:<input type="text" name="clubName" value="${c.clubName}" /> </label>
            <br/>
            <label>Club Image:<input type="text" name="image" value="${c.image}" /> </label>
            <br/>
            <label>Club Kit:<input type="text" name="kit" value="${c.kit}" /> </label>
            <br/>
            <label>Club Stadium:<input type="text" name="stadium" value="${c.stadium}" /> </label>
            <br/>
            <input type="submit" value="Update" name="op" />
        </form>
        <%@include file="footer.jsp" %>
    </body>
</html>
