<%-- 
    Document   : listServed
    Created on : 02-Dec-2015, 23:42:23
    Author     : Jamie
--%>

<%@page import="Model.Distance"%>
<%@page import="Model.Customer"%>
<%@page import="Model.Journey"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customers</title>
    </head>
    <body>
        <h2>Jobs for <%=request.getParameter("date")%></h2>
    <center>
       
         <table>
               <tr>
                   <th>Customer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Destination&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Charge (+ VAT)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
               </tr>
<%
         Journey jour = new Journey();
         String date = request.getParameter("date");
         int count = 0;
         int distanceno = 0;
         String distance;
         double price = 0;
         double total = 0;
         double vat = 0;
         
           
         for (int i = 0; i < jour.getJourneyLineSize(); i++) {
                 if (date.equals(jour.getDate(i))) {
                     distance = jour.getDistance(i);
                     distanceno = Integer.parseInt(distance);
                     if (distanceno < 5) {
                         price = distanceno * (Distance.newprice + 2);
                     } else {
                         price = distanceno * 2;
                     }
                     vat = price * (20.0f / 100.0f);
                     total = price + vat;
                     String price2 = String.format("%.2f", price);
                     String vat2 = String.format("%.2f", vat);
                     String total2 = String.format("%.2f", total);
                     out.println("<tr>");
                     out.println("<td>" + jour.getCustomerID(i) + "</td><td> "
                             + jour.getDestination(i) + "</td><td>"
                             + "£" + price2 + " + " + "£" + vat2 + "</td><td>"
                     + "£" + total2 + "</td><td>");
                     out.println("</tr>");
                 } else {
                     count++;
                 }
             }
         
         %>
         </table>
         <%
         if(count == jour.getJourneyLineSize()) {%>
         <h3>Sorry there are no jobs on <%=(date)%></h3>
         <%}
         %>
                     <form action="<%=request.getContextPath()%>/docs/dateServed" method="post">
        <button type="submit">Go back</button>
        </form>
    </center>
    </body>
</html>
