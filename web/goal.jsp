<%-- 
    Document   : goal
    Created on : Oct 19, 2021, 11:12:05 PM
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
        <h3>Add goal</h3>
        <form action="match" method="get">
            <input name="matchId" value="${m.matchId}" hidden="" />
            <label>Scorer:
                <select name="scorer">
                    <c:forEach items="${list}" var="p">
                        <c:set var="player" value="${pd.getPlayerbyId(p.playerId)}" />
                        <option value="${player.playerId}" >${player.playerName}</option>
                    </c:forEach>
                </select>
            </label>
            <br/>
            <label>Assistant:
                <select name="assistant">
                    <option value="0">None</option>
                    <c:forEach items="${list}" var="p">
                        <c:set var="player" value="${pd.getPlayerbyId(p.playerId)}" />
                        <option value="${player.playerId}" >${player.playerName}</option>
                    </c:forEach>
                </select>
            </label>
            <br/>
            <label>Time: <input type="number" name="time" /></label>
            <br/>
            <label><input type="checkbox" name="og" /> Own Goal?</label>
            <br/>
            <input name="op" value="AddGoal" hidden="" />
            <input type="submit" value="Add Goal" />
        </form>
        <%@include file="footer.jsp" %>
    </body>
</html>
