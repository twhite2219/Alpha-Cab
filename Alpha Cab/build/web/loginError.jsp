<%-- 
    Document   : loginError
    Created on : 27-Nov-2015, 18:34:04
    Author     : Jamie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incorrect Password</title>
    </head>
    <body>
    <center><a href="${pageContext.request.contextPath}/"><img src="https://d2gg9evh47fn9z.cloudfront.net/thumb_COLOURBOX6702949.jpg"/></a></center>
        <h1 align="center">Welcome to Alpha Cab</h1>
    <center>
        <form action ="loginCheck.jsp" method="POST">
            <h3 style="color: red">Incorrect username/password, please try again!</font></h3>
            Username:<input type="text" name="username"/>
            <br>
            Password:  <input type="password" name="password"/>
            </br>
            <input type="submit"/>
        </form>
    </center>
    </body>
</html>