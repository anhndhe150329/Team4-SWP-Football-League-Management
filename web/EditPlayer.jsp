<%-- 
    Document   : EditPlayer
    Created on : Oct 7, 2021, 6:35:26 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Player</title>
    </head>
    <style>
        form  {
    margin: 30px;
    
     }
    </style>
    <body>
        <%@include file="header.jsp" %>
        <form action="player" method="post">
            <input name="id" value="${p.playerId}" hidden="" />
            <label>Player Name: <input type="text" name="name" value="${p.playerName}" /></label>
            <br/>
            <label>DOB: <input type="date" name="dob" value="${p.dob}" /></label><br/>
            <label>Player Position: 
                <select name="pos" >
                    <c:forEach items="${pd.getAllPos()}" var="pos">
                        <option value="${pos.posId}"  ${pos.posId==p.pos?"selected":""} >${pos.posName}</option>
                    </c:forEach>
                </select>
            </label><br/>
            <label>Player Number: <input type="number" name="number" value="${p.number}" /></label><br/>
            <label>Player Country: <input type="text" name="country" value="${p.country}" /></label><br/>
            <label>Player Image: <input type="text" name="image" value="${p.image}" /></label><br/>
            <input name="clubId" value="${acc.favClub}" hidden="" />
            <input type="submit" name="op" value="Update"/>
        </form>
        <%@include file="footer.jsp" %>
    </body>
</html>
