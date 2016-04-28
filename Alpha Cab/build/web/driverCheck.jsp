<%-- 
    Document   : driverCheck
    Created on : Nov 30, 2015, 5:04:05 PM
    Author     : jamiegear
--%>

<%@page import="Model.Distance"%>
<%@page import="Model.Drivers"%>
<%@page import="Model.Customer"%>
<%@page import="Model.Demands"%>
<%@page import="Model.Journey"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
    </head>
    <body>
    <center><a href="${pageContext.request.contextPath}/"><img src="https://d2gg9evh47fn9z.cloudfront.net/thumb_COLOURBOX6702949.jpg"/></a></center>
        <h1 align="center">Booking confirmed</h1>
    <center>
        <h3>Thanks for your business</h3>
        <%
            Journey jour = new Journey();
            Demands dema = new Demands();
            Customer cust = new Customer();
            Drivers drive = new Drivers();
            Distance dist = new Distance();
        String customer = request.getParameter("name");
        String address = request.getParameter("address");
        String destination = request.getParameter("destination");
        String date = request.getParameter("date");
        String time = request.getParameter("time") + (":00");
        String drivers_reg = drive.getRegistration(1);
        System.out.println(drivers_reg);
        String status = null;
        double distance = 0;
        int distance2 = 0;
        double total = 0;
        double pricevat = 0;
        double price = 0;
        String customer_id = "";
        String[] datearr = new String[jour.getJourneyLineSize()];
        String[] timearr = new String[jour.getJourneyLineSize()];
        String[] regarr = new String[jour.getJourneyLineSize()];
        
        for(int i = 0; i < datearr.length; i++) {
            datearr[i] = jour.getDate(i);
            timearr[i] = jour.getTime(i);
            regarr[i] = jour.getDriverReg(i);
        }
        
            //String reg = drive.getRegistration(1);
            cust.addCustomer(customer, address);
            for (int i = 0; i < cust.getCustomerSize(); i++) {
                    if(cust.getName(i).contains(customer)) {
                        customer_id = cust.getID(i);
                    }
                }
             for (int i = 0; i < jour.getJourneyLineSize(); i++) {
                     if (date.equals(datearr[i]) && time.equals(timearr[i])) {
                         for (int j = 1; j < drive.getDriverSize(); j++) {
                             drivers_reg = drive.getRegistration(j);
                             if (drivers_reg.equals(regarr[i])) {
                                 status = "Outstanding";
                             } else {
                                 status = "Complete";
                             }
                         }
                     } else {
                         status = "Complete";
                     }
                 }        
        
         distance = dist.GetDistance(address, destination);
         distance = 0.62137119 * distance;
         distance2 = (int) distance;
             
        if(status.equals("Outstanding")) {
            dema.addDemand(customer, address, destination, date, time, status);
                    response.sendRedirect("customerError.jsp");
                    return;
        } else {
            dema.addDemand(customer, address, destination, date, time, status); 
            jour.addJourney(destination, distance2, customer_id, drivers_reg, date, time);
            
        }
        
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
<h4>Your cab will pick you up from <%=address%> at <%=time%> on <%=date%></h4>
<h4>Your destination is <%=destination%> (<%=resultdistance%> miles)</h4>
<h4>Price + VAT = <%=result%> + <%=resultvat%></h4>
<h4>Total = <%=resulttotal%></h4>


<form action="<%=request.getContextPath()%>/">
          <button type="submit">Back to Home</button>
        </form>
    </center>
    </body>
</html>