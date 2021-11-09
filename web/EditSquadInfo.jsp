<%-- 
    Document   : EditSquadInfo
    Created on : Oct 10, 2021, 10:01:51 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Squad</title>
    </head>
    <style>
        form  {
            margin: 30px;

        }
    </style>
    <body>
        <%@include file="header.jsp" %>
        <form action="squad" method="post">
            <c:set var="add" value="add" />
            <c:set var="change" value="change" />
            <c:if test="${op==add}" >
                <h3>Add player for position ${posNo} </h3>
                <input name="op" value="Add" hidden="" />
            </c:if>
            <c:if test="${op==change}" >
                <h3>Change player from position ${posNo} </h3>
                <input name="op" value="Change" hidden="" />
            </c:if>
            <input name="posNo" value="${posNo}" hidden="" />
            <br/>
            <select name="playerId" >
                <c:if test="${check}"><c:set value="${pd.getPlayerbyclubId(acc.favClub)}" var="list"/></c:if>
                <c:if test="${!check}"><c:set value="${pd.getAllPlayer()}" var="list"/></c:if>
                    <c:forEach items="${list}" var="p" >
                        <option value="${p.playerId}" >${p.playerName}</option>
                    </c:forEach>
                
            </select>
            <br/>
            <input name="mId" value="${mId}" hidden="" /> 
            <input name="isHome" value="${isHome}" hidden="" /> 
            <input name="sId" value="${sId}" hidden="" />

            <input type="submit" value="Confirm" />
        </form>
        <%@include file="footer.jsp" %>
    </body>
</html>
