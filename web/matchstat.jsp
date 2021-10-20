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
        <table>
            <tr><th colspan="5">Event</th></tr>
                    <c:forEach items="${list}" var="e">
                <tr>
                    <c:choose>
                        <c:when test="${(e.clubId==m.home&&(e.isGoal&&!e.og||!e.isGoal))||(e.clubId==m.away&&e.isGoal&&e.og)}">
                            <td>${e.playerName}${e.isGoal&&e.og?"(og)":""}</td>
                            <td width="10">${e.isGoal?"Goal":(e.og?"Red":"yellow")}</td>
                            <td>${e.time}</td>
                            <td width="10"></td>
                            <td></td>
                        </c:when>
                        <c:otherwise>
                            <td></td>
                            <td width="10"></td>
                            <td>${e.time}</td>
                            <td width="10">${e.isGoal?"Goal":(e.og?"Red":"yellow")}</td>
                            <td>${e.playerName}${e.isGoal&&e.og?"(og)":""}</td>
                        </c:otherwise>
                    </c:choose>
                    <c:if test="${acc.type==1}" >
                        <td><a href="#">Edit</a></td>
                        <td><a href="match?op=delgoal&goalId=${e.goalId}&matchId=${m.matchId}">delete</a></td>
                    </c:if>
                </tr>
            </c:forEach>
            <c:if test="${acc.type==1}" >
                <tr><td><a href="match?op=addgoal&matchId=${m.matchId}">Add Goal</a></td></tr>
                <tr><td><a href="#">Add Card</a></td></tr>
            </c:if>
        </table>

        <br/>
        <table>
            <tr><th colspan="5">Statistic</th></tr>
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
