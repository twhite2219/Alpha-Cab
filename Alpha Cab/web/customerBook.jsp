<%-- 
    Document   : customerBook
    Created on : 27-Nov-2015, 18:34:04
    Author     : Jamie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
    </head>
    <body>
    <center><a href="${pageContext.request.contextPath}/"><img src="https://d2gg9evh47fn9z.cloudfront.net/thumb_COLOURBOX6702949.jpg"/></a></center>
        <h1 align="center">Welcome to Alpha Cab</h1>
    <center>
        <h3>Fill in your details below</h3>
        <form action="<%=request.getContextPath()%>/customerPrice.jsp" method="post">
          Name: <input type="text" name="name" required/>
          <br>
          Address: <input type="text" name="address" required/>
          <br>
          Destination: <input type="text" name="destination" required/>
          <br>
          Date: <input type="date" name="date" required/>
          <br>
          Time: <input type="time" name="time" required/>
          <br>
          <br>
          <button type="submit">Calculate Price</button>
        </form>
          <br>
          <form action="<%=request.getContextPath()%>/driverCheck.jsp" method="post">
          <button type="submit">Book Cab</button>
        </form>
    </center>
    </body>
</html>