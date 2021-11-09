<%-- 
    Document   : rank
    Created on : Oct 9, 2021, 7:51:37 PM
    Author     : asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rank Table</title>
    </head>
    <style>
        .main1 {
            width: 100vw;
            margin: auto;
            position: relative;
            top: 4vh;
            font-family: 'Oswald', sans-serif
        }

        .main2 {
            width: 100vw;
            margin: auto;
            background-color: #9e9e9e;
            color: white;
            padding: 0.5vw
        }

        .flag {
            width: 5vw;
            height: 3vw;
            position: relative;
            bottom: 0.5vw
        }

        .pt {
            font-size: 2vw
        }

        table {
            color: white
        }

        .logo {
            width: 2vw;
            height: 2vw
        }

        td {
            text-align: center
        }

        .name {
            text-align: left
        }

        thead {
            background-color: red;
            border-bottom: 2px solid red
        }

        .top {
            background-color: rgb(0, 255, 0, 0.5)
        }

        .top .logo {
            animation-name: four;
            animation-duration: 2s;
            animation-timing-function: ease-in-out;
            animation-iteration-count: infinite
        }

        @keyframes four {
            0% {
                position: relative;
                right: 0vw
            }

            50% {
                position: relative;
                right: 2vw
            }

            100% {
                position: relative;
                right: 0vw
            }
        }

        @media only screen and (max-width: 425px) {

            .main1,
            .main2 {
                width: 100vw;
                height: 220vw
            }

            .name {
                font-size: 4vw
            }

            .logo {
                height: 6vw;
                width: 6vw
            }

            h2 {
                font-size: 8vw
            }

            .flag {
                width: 10vw;
                height: 6vw;
                position: relative;
                bottom: 1vw
            }

            .pt {
                font-size: 5vw
            }
        }
        .table>thead>tr>th, .table>tbody>tr>th, .table>tfoot>tr>th, .table>thead>tr>td, .table>tbody>tr>td, .table>tfoot>tr>td {
            color:white;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <script  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script  src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>




    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="main1">
            <c:if test="${acc.type==1}">
                <a href="rank?op=refresh" style="font-size: 14px;">Refresh</a>
            </c:if>
            <div class="main2 table-responsive" style="font-size:16px">
                <center>
                    <h2> PREMIER LEAGUE <img class="flag" src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1561260902/Flag_of_Great_Britain__281707_E2_80_931800_29.svg"></h2>
                    <p class="pt">POINTS TABLE 2019</p>
                    <table class="table">
                        <thead>
                        <td>Pos.</td>
                        <td class="name">CLUBS</td>
                        <td>P</td>
                        <td>W</td>
                        <td>D</td>
                        <td>L</td>
                        <td>GD</td>
                        <td>POINTS</td>
                        </thead>
                        <tbody>
                            <c:forEach begin="0" end="${lrank.size()-1}" var="i" step="1">
                                <c:set value="${lrank.get(i)}" var="lr"/>
                                <c:if test="${i<4}"><c:set var="t" value="top"/></c:if>
                                <c:if test="${i>=4}"><c:set var="t" value=""/></c:if>
                                <tr class="${t}">
                                    <td>${i+1}</td>
                                    <td class="name"><img class="logo" src="img/logo/${cd.getClubById(lr.clubId).image}">&nbsp;&nbsp; ${cd.getClubById(lr.clubId).clubName}</td>
                                    <td>${lr.app}</td>
                                    <td>${lr.w}</td>
                                    <td>${lr.d}</td>
                                    <td>${lr.l}</td>
                                    <td>${lr.gd}</td>
                                    <td>${lr.point}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </center>
            </div>
        </div>
        <br>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
