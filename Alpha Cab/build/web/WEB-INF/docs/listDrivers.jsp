<%-- 
    Document   : listDrivers
    Created on : 01-Dec-2015, 16:13:57
    Author     : Jamie
--%>

<%@page import="Model.Drivers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Drivers</h1> 
    <center>
         <table>
               <tr>
                   <th>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Driver Registration&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
               </tr>
               <%
         Drivers drive = new Drivers();
         
           
         for (int i = 0; i < drive.getDriverSize(); i++) {
            out.println("<tr>");
            out.println("<td>" + drive.getName(i) + " </td><td> " 
                    + drive.getRegistration(i) + " </td><td>");
             }


         %>
         </table>
    </center>
    </body>
</html>
