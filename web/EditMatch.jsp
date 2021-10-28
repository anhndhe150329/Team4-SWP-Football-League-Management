<%-- 
    Document   : EditMatch
    Created on : Oct 28, 2021, 10:40:22 AM
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
        
        <form action="schedule" method="get" >
        <h3>${cd.getClubById(match.home).clubName} VS ${cd.getClubById(match.away).clubName}</h3>    
        <input value="${match.matchId}" name="id" hidden="" />
        <label>Date: <input type="date" value="${match.date}" name="date" /></label>
        <br/>
        <label><input type="checkbox" ${match.status?"checked":""} name="status" />Started?</label>
        <br/>
        <input type="submit" value="Update" name="op" />
        </form>
    </body>
</html>
