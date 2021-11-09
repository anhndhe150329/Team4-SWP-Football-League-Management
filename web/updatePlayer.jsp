<%-- 
    Document   : updatePlayer
    Created on : Oct 2, 2021, 11:53:48 PM
    Author     : atung
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Player</title>
    </head>
    <body>
        <a href="index.jsp">Back to home</a>
        <form action="UpdatePlayer" method="POST">
            <c:set var="p" value="${requestScope.player}"/>
            
            <div>
                <label for="playerId" class="cols-sm-2 control-label">ID</label>

                <input type="text" name="playerId" value="${p.playerId}" />
            </div>
            <div>
                <label for="playerName" class="cols-sm-2 control-label">Name</label>

                <input type="text" name="playerName" value="${p.playerName}" />
            </div>
            <div>
                <label for="dob" class="cols-sm-2 control-label">dob</label>

                <input type="date" name="dob" value="${p.dob}" />
            </div>
            <div>
                <label for="pos" class="cols-sm-2 control-label">pos</label>

                <input type="text" name="pos" value="${p.pos}" />
            </div>
            <div>
                <label for="number" class="cols-sm-2 control-label">number</label>

                <input type="text" name="number" value="${p.number}" />
            </div>
            <div>
                <label for="country" class="cols-sm-2 control-label">country</label>

                <input type="text" name="country" value="${p.country}" />
            </div>
            <div>
                <label for="image" class="cols-sm-2 control-label">image</label>

                <input type="text" name="image" value="${p.image}" />
            </div>
            <div>
                <label for="clubId" class="cols-sm-2 control-label">clubId</label>

                <input type="text" name="clubId" value="${p.clubId}" />
            </div>


            <button type="submit" class="btn btn-primary btn-lg btn-block login-button">UPDATE</button>

            
        </form>
            
    </body>
</html>
