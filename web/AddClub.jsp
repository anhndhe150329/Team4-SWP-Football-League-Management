<%-- 
    Document   : AddClub
    Created on : Oct 5, 2021, 9:37:05 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Club</title>
    </head>
    <style>
        form  {
    margin: 30px;
    
     }
    </style>
    <body>
        <%@include file="header.jsp" %>
        <form action="club" method="get">
            <label>Club Name:<input type="text" name="clubName" /> </label>
            <br/>
            <label>Club Image:<input type="text" name="image" /> </label>
            <br/>
            <label>Club Kit:<input type="text" name="kit" /> </label>
            <br/>
            <label>Club Stadium:<input type="text" name="stadium" /> </label>
            <br/>
            <input type="submit" value="Add" name="op" />
        </form>
        <%@include file="footer.jsp" %>
    </body>
</html>
