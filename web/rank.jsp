<%-- 
    Document   : rank
    Created on : Oct 9, 2021, 7:51:37 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    <div class="main2 table-responsive">
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
                    <tr class="top">
                        <td>1</td>
                        <td class="name"><img class="logo" src="https://i.imgur.com/sNRqujN.png">&nbsp;&nbsp; MANCHESTER CITY</td>
                        <td>7</td>
                        <td>6</td>
                        <td>1</td>
                        <td>0</td>
                        <td>+18</td>
                        <td>19</td>
                    </tr>
                    <tr class="top">
                        <td>2</td>
                        <td class="name"><img class="logo" src="https://i.imgur.com/DVl1wku.png">&nbsp;&nbsp; LIVERPOOL</td>
                        <td>7</td>
                        <td>6</td>
                        <td>1</td>
                        <td>0</td>
                        <td>+12</td>
                        <td>19</td>
                    </tr>
                    <tr class="top">
                        <td>3</td>
                        <td class="name"><img class="logo" src="https://i.imgur.com/DlkNzVx.png">&nbsp;&nbsp; CHELSEA</td>
                        <td>7</td>
                        <td>5</td>
                        <td>2</td>
                        <td>0</td>
                        <td>+10</td>
                        <td>17</td>
                    </tr>
                    <tr class="top">
                        <td>4</td>
                        <td class="name"><img class="logo" src="https://i.imgur.com/Pk1D0Ys.png">&nbsp;&nbsp; TOTTENHHAM HOTSPUR</td>
                        <td>7</td>
                        <td>5</td>
                        <td>0</td>
                        <td>2</td>
                        <td>+7</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td class="name"><img class="logo" src="https://i.imgur.com/BxK4RFF.png">&nbsp;&nbsp; ARSENAL</td>
                        <td>7</td>
                        <td>5</td>
                        <td>0</td>
                        <td>2</td>
                        <td>+5</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td class="name"><img class="logo" src="https://i.imgur.com/JHEQjdz.png">&nbsp;&nbsp; WATFORD</td>
                        <td>7</td>
                        <td>4</td>
                        <td>1</td>
                        <td>2</td>
                        <td>+3</td>
                        <td>13</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td class="name"><img class="logo" src="https://i.imgur.com/rG2UC1J.jpg">&nbsp;&nbsp; BOURNEMOUTH</td>
                        <td>7</td>
                        <td>4</td>
                        <td>1</td>
                        <td>2</td>
                        <td>0</td>
                        <td>13</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td class="name"><img class="logo" src="https://i.imgur.com/1GNZGeL.png">&nbsp;&nbsp; LEICESTER CITY</td>
                        <td>7</td>
                        <td>4</td>
                        <td>0</td>
                        <td>3</td>
                        <td>+3</td>
                        <td>12</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td class="name"><img class="logo" src="https://i.imgur.com/ypsEVRW.png">&nbsp;&nbsp; WOLVERHAMPTON WANDERERS</td>
                        <td>7</td>
                        <td>3</td>
                        <td>3</td>
                        <td>1</td>
                        <td>+2</td>
                        <td>12</td>
                    </tr>
                </tbody>
            </table>
        </center>
    </div>
</div>
        <br>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
