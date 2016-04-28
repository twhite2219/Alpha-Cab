<%-- 
    Document   : dailyReport
    Created on : 02-Dec-2015, 14:41:40
    Author     : Jamie
--%>

<%@page import="Model.Distance"%>
<%@page import="Model.Journey"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Report for <%=request.getParameter("date")%></h1>
    <center> 
         <table>
               <tr>
                   <th>ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Destination&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Distance&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Customer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Driver Registration&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
               </tr>
               <%
                   Journey jour = new Journey();
                   String date = request.getParameter("date");
                   int price = 0;
                   double total = 0;
                   int distanceno = 0;
                   String distance;
                   int count = 0;
                   double totalvat = 0;
                                     
                   for (int i = 0; i < jour.getJourneyLineSize(); i++) {
             if(date.equals(jour.getDate(i))) {
                 out.println("<tr>");
            out.println("<td>" + jour.getJourneyID(i) + " </td><td> " 
                    + jour.getDestination(i) + " </td><td>" 
                    + jour.getDistance(i) + " </td><td>"
            + jour.getCustomerID(i) + " </td><td>"
            + jour.getDriverReg(i) + " </td><td>"
            + jour.getDate(i) + " </td><td>"
            + jour.getTime(i) + " </td><td>");
            out.println("</tr>");
             }
        }
                   %>
         </table>
         <br>
         <table>
               <tr>
                   <th>No. of customers served&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Turnover&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Turnover (+ VAT)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
               </tr>
                   
                   
                   <%
                    
                   for(int i = 0; i < jour.getJourneyLineSize(); i++) {
                       if(date.equals(jour.getDate(i))) {
                           count++;
                           distance = jour.getDistance(i);
                           distanceno = Integer.parseInt(distance);
                           if(distanceno < 5) {
                               price = distanceno * (Distance.newprice + 2);
                           } else {
                               price = distanceno * 2;
                           }
                           total += price;
                       }
                   }
                   totalvat = total*(20.0f/100.0f);
                   totalvat = total + totalvat;
                   String turnover = String.format("%.2f", total);
                   String turnovervat = String.format("%.2f", totalvat);
                
                   
                   out.println("<tr>");
                   out.println("<td>" + count + "</td><td>" + "£" + turnover + "</td>"
                   + "<td>" + "£" + turnovervat);
                   
                   
                   
                   %>
                   
         </table>
                   <form action="<%=request.getContextPath()%>/docs/dateReport" method="post">
        <button type="submit">Go back</button>
        </form>
    </center>
    </body>
</html>
