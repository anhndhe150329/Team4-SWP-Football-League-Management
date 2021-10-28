<%-- 
    Document   : EditMatchStat
    Created on : Oct 28, 2021, 11:57:51 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <table>
            <tr>
                <th colspan="5">Statistic</th>
            </tr>
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
</body>
</html>
