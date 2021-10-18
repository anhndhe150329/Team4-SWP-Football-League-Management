<%-- 
    Document   : matchstat
    Created on : Oct 18, 2021, 4:52:51 PM
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
    <body>
        <%@include file="header.jsp" %>
        <c:set var="h" value="${cd.getClubById(m.home)}" />
        <c:set var="a" value="${cd.getClubById(m.away)}" />
    <center>


        <table >
            <tr>
                <td>${h.clubName}</td>
                <td>${m.homeScore}</td>
                <td>${m.awayScore}</td>
                <td>${a.clubName}</td>
            </tr>
            <tr>
                <td>${home.possession}</td>
                <td colspan="2">Possession</td>
                <td>${away.possession}</td>
            </tr>
            <tr>
                <td>${home.shot}</td>
                <td colspan="2">Shot</td>
                <td>${away.shot}</td>
            </tr>
            <tr>
                <td>${home.sot}</td>
                <td colspan="2">Shot on target</td>
                <td>${away.sot}</td>
            </tr>
            <tr>
                <td>${home.corners}</td>
                <td colspan="2">Corners</td>
                <td>${away.corners}</td>
            </tr>
            <tr>
                <td>${home.offside}</td>
                <td colspan="2">Offside</td>
                <td>${away.offside}</td>
            </tr>
            <tr>
                <td>${home.foul}</td>
                <td colspan="2">Foul</td>
                <td>${away.foul}</td>
            </tr>
        </table>
    </center>


    <%@include file="footer.jsp" %>
</body>
</html>
