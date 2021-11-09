<%-- 
    Document   : AddPlayer
    Created on : Oct 7, 2021, 6:06:45 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Player</title>
    </head>
    <style>
        form  {
    margin: 30px;
    
     }
    </style>
    <body>
        <%@include file="header.jsp" %>
        <form action="player" method="post" >
            <label>Player Name: <input type="text" name="name" /></label>
            <br/>
            <label>DOB: <input type="date" name="dob" /></label><br/>
            <label>Player Position: 
                <select name="pos" >
                    <c:forEach items="${poss}" var="pos">
                        <option value="${pos.posId}">${pos.posName}</option>
                    </c:forEach>
                </select>
            </label><br/>
            <label>Player Number: <input type="number" name="number" /></label><br/>
            <label>Player Country: <input type="text" name="country" /></label><br/>
            <label>Player Image: <input type="text" name="image" /></label><br/>
            <input name="clubId" value="${acc.favClub}" hidden="" />
            <input type="submit" name="op" value="Add"/>
        </form>
        <%@include file="footer.jsp" %>
    </body>
</html>
