<%-- 
    Document   : ListPlayer
    Created on : Oct 6, 2021, 3:51:23 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/style2.css" rel="stylesheet">
        <link href="css/colors.css" rel="stylesheet">
    </head>
    <style>
        form{
            margin-left: 50px;
            margin-bottom: 20px;
            display: flex;
            padding-top:20px;
        }
    </style>
    <body>
        <%@include file="header.jsp"  %> 
        <form action="player" method="get">
            <select name="club">
                <option value="0" ${club==0?"selected":""} >Select Club</option>
                <c:forEach  items="${cd.getALL()}" var="c">
                    <option value="${c.clubId}" ${club==c.clubId?"selected":""} >${c.clubName}</option>
                </c:forEach>
            </select>
            <select name="pos">
                <option value="0" ${pos==0?"selected":""} >Select Position</option>
                <c:forEach  items="${pd.getAllPos()}" var="po">
                    <option value="${po.posId}" ${pos==po.posId?"selected":""} >${po.posName}</option>
                </c:forEach>
            </select>
                
                <input type="text" name="name" value="${name}" placeholder="Name"/>
            <input value="list" name="op" hidden=""/>
            <input type="submit" value="Search" />

        </form>

                
                <!------------------------------------>
                <div class="container-fluid text-center"    >
            <table class="table table-bordered table-hover">

                <tr class="table-inverse">
                    <th>Player Name</th>
                    <th>Club</th>               
                    <th>Number</th>
                    <th>Position</th>
                    

                   
                </tr>
                <c:forEach items="${pd.SearchPlayer(club, pos,name)}" var="p">
                <tr>
                    <td>${p.playerName}</td>
                    <td>${cd.getClubById(p.clubId).clubName}</td>
                    <td>${p.number}</td>
                    <td>${pd.getPos(p.pos).posName}</td>
                </tr>
            </c:forEach>

            </table>
            <a href="home" class="btn btn-gradient grd4 withradius secbtn">HOME</a>

        
    </body>
</html>
