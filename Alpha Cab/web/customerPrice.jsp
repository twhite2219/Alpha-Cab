<%-- 
    Document   : customerPrice
    Created on : 27-Nov-2015, 18:34:04
    Author     : Jamie
--%>

<%@page import="Model.Distance"%>
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
        <form action="<%=request.getContextPath()%>/driverCheck.jsp" method="post">
          <input type="text" name="name" value="<%=request.getParameter("name")%>" hidden/>
          <input type="text" name="address" value="<%=request.getParameter("address")%>" hidden/>
          <input type="text" name="destination" value="<%=request.getParameter("destination")%>" hidden/>
          <input type="date" name="date" value="<%=request.getParameter("date")%>" hidden/>
          <input type="time" name="time" value="<%=request.getParameter("time")%>" hidden/>
          <%
              Distance dist = new Distance();
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String destination = request.getParameter("destination");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
              double distance = 0;
            int distance2 = 0;
            double total = 0;
            double pricevat = 0;
            double price = 0;
              distance = dist.GetDistance(address, destination);
         distance = 0.62137119 * distance;
         distance2 = (int) distance;
         
        if(distance < 5) {
            price = distance * (Distance.newprice + 2);
        } else {
            price = distance * 2;
        }
        pricevat = price*(20.0f/100.0f);
        total = price + pricevat;
        String resultdistance = String.format("%.2f", distance);
        String result = String.format("%.2f", price);
        String resultvat = String.format("%.2f", pricevat);
        String resulttotal = String.format("%.2f", total);
              %>
       <h3><%=address%> to <%=destination%></h3>
        <h4>Price + VAT = <%=result%> + <%=resultvat%></h4>
        <h4>Total = <%=resulttotal%></h4>
          <button type="submit">Book Cab</button>
        </form>
          <br>
          <form action="<%=request.getContextPath()%>/customerBook.jsp" method="post">
              <button type="submit">Restart</button>
          </form>
    </center>
    </body>
</html>