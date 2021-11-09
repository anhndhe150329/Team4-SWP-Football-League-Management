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
        <title>Match</title>
    </head>
    <body>
    <center>
        <form action="match" method="post">
            <input value="${m.matchId}" name="matchId" hidden="" />
            <table>
                <tr>
                    <th colspan="5">Statistic</th>
                </tr>
                <tr>
                    <td>${cd.getClubById(m.home).clubName}</td>
                    <td>${m.homeScore}</td>
                    <td>${m.awayScore}</td>
                    <td>${cd.getClubById(m.away).clubName}</td>
                </tr>
                <tr>
                    <td><input value="${home.possession}" type="text" name="hposs"  /></td>
                    <td colspan="2">Possession</td>
                    <td><input value="${away.possession}" type="text" name="aposs" /></td>
                </tr>
                <tr>
                    <td><input value="${home.shot}" name="hshot" type="number" /></td>
                    <td colspan="2">Shot</td>
                    <td><input value="${away.shot}" name="ashot" type="number" /></td>
                </tr>
                <tr>
                    <td><input value="${home.sot}" type="number" name="hsot" /></td>
                    <td colspan="2">Shot on target</td>
                    <td><input value="${away.sot}" type="number" name="asot" /></td>
                </tr>
                <tr>
                    <td><input value="${home.corners}" type="number" name="hcorners" /></td>
                    <td colspan="2">Corners</td>
                    <td><input value="${away.corners}" type="number" name="acorners" /></td>
                </tr>
                <tr>
                    <td><input value="${home.offside}" type="number" name="hoffside" /></td>
                    <td colspan="2">Offside</td>
                    <td><input value="${away.offside}" type="number" name="aoffside" /></td>
                </tr>
                <tr>
                    <td><input value="${home.foul}" type="number" name="hfoul" /></td>
                    <td colspan="2">Foul</td>
                    <td><input value="${away.foul}" type="number" name="afoul" /></td>
                </tr>
                <tr><td><input type="submit" value="Update" name="op" /></td></tr>
            </table>
        </form>
    </center>
</body>
</html>
