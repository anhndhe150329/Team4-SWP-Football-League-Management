<%-- 
    Document   : SquadInfo
    Created on : Oct 10, 2021, 3:52:00 PM
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
    <legend >
        <table >
            <caption>Squad</caption>
            <tr>
                <th>PosNo</th>
                <th>Image</th>
                <th>Name</th>
                <th>Number</th>
                <th>Position</th>
            </tr>
            <c:forEach begin="1" end="11" var="s" >
                <c:set var="si" value="${sd.getOneSquadInfo(sId,s)}" />
                <tr>
                    <td>${s}</td>
                    <c:if test="${si==null}">
                        <td><a href="squad?op=add&posNo=${s}&sId=${sId}&mId=${mId}&isHome=${isHome}">Add player</a></td>
                    </c:if>
                    <c:if test="${si!=null}">
                        <c:set var="p" value="${pd.getPlayerbyId(si.playerId)}" />
                        <td>${p.image}</td>
                        <td>${p.playerName}</td>
                        <td>${p.number}</td>
                        <td>${pd.getPos(p.pos).posName}</td>
                        <td><a href="squad?op=change&posNo=${s}&sId=${sId}&mId=${mId}&isHome=${isHome}">Change</a></td>
                        <td><a href="squad?op=delete&posNo=${s}&sId=${sId}&mId=${mId}&isHome=${isHome}">Delete</a> </td>
                    </c:if>
                </tr>
            </c:forEach>
        </table>
    </legend>
    <%@include file="footer.jsp" %>
</body>
</html>
