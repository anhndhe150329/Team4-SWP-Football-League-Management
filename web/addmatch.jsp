<%-- 
    Document   : addmatch
    Created on : Oct 4, 2021, 5:35:02 PM
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
    <style>
        form  {
    margin: 30px;
    
     }
    </style>
    <body>
        <%@include file="header.jsp" %>
        <form method="get" action="schedule">
            <select name="home" required="" >
                <option value="0" selected="">Select home club</option>
                <c:forEach items="${clubs}" var="c">
                    <option value="${c.clubId}">${c.clubName}</option>
                </c:forEach>
            </select>
            <br/>
            <select name="away" required="" >
                <option value="0" selected="">Select away club</option>
                <c:forEach items="${clubs}" var="c">
                    <option value="${c.clubId}">${c.clubName}</option>
                </c:forEach>
            </select>
            <br/>
            <label>Date: <input type="date" name="date" required="" /></label>
            <br/>
            <input type="submit" value="Add" name="op" />
        </form>
        <%@include file="footer.jsp" %>
    </body>
</html>
