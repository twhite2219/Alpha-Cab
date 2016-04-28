<%-- 
    Document   : listJobs
    Created on : 01-Dec-2015, 11:39:53 PM
    Author     : Jamie
--%>

<%@page import="Model.Customer"%>
<%@page import="java.util.ArrayList"%>
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
                   <th>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Destination&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Distance&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Customer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Driver Registration&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
               </tr>
<%
         Journey jour = new Journey();
         String username = (String) session.getAttribute("username");
         String date = request.getParameter("date");
         Customer cust = new Customer();
         int count = 0;
         
           
         for (int i = 0; i < jour.getJourneyLineSize(); i++) {
             if(date.equals(jour.getDate(i))) {
             if(username.equals(jour.getDriverReg(i))) {
                 
            out.println("<tr>");
            out.println("<td>" + jour.getID(i) + "</td><td> " 
                    + jour.getDestination(i) + "</td><td>" 
                    + jour.getDistance(i) + "</td><td>"
            + jour.getCustomerID(i) + "</td><td>"
            + jour.getDriverReg(i) + "</td><td>"
            + jour.getDate(i) + "</td><td>"
            + jour.getTime(i) + "</td><td>");
            out.println("</tr>");
             } else if (username.equals("admin")){
                 out.println("<tr>");
            out.println("<td>" + jour.getID(i) + "</td><td> " 
                    + jour.getDestination(i) + "</td><td>" 
                    + jour.getDistance(i) + "</td><td>"
            + jour.getCustomerID(i) + "</td><td>"
            + jour.getDriverReg(i) + "</td><td>"
            + jour.getDate(i) + "</td><td>"
            + jour.getTime(i) + "</td><td>");
            out.println("</tr>");
             }
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
         <form action="<%=request.getContextPath()%>/docs/dateJobs" method="post">
        <button type="submit">Go back</button>
        </form>
    </center>
    </body>
</html>
