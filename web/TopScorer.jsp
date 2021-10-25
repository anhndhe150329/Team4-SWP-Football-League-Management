<%-- 
    Document   : TopScorer
    Created on : Oct 25, 2021, 9:22:39 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="topscorer">
            <table border="1">
                <thead>
                    <tr>
                        <th>Goal</th>
                        <th>Player</th>
                        <th>Pos</th>
                        <th>Country</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listTopScorer}" var ="T">
                    <tr>
                        <td>${T.scorer}</td>
                        <td>${T.playerName}</td>
                        <td>${T.pos}</td>
                        <td>${T.country}</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>

        </form>
    </body>
</html>
