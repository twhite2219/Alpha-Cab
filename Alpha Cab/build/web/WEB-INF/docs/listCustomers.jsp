<%-- 
    Document   : listCustomers
    Created on : 01-Dec-2015, 16:15:20
    Author     : Jamie
--%>

<%@page import="Model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Customers</h1> 
    <center> 
         <table>
               <tr>
                   <th>ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                   <th>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
               </tr>
               <%
         Customer cust = new Customer();
         
           
         for (int i = 0; i < cust.getCustomerSize(); i++) {
                 out.println("<tr>");
                 out.println("<td>" + cust.getID(i) + " </td><td> "
                         + cust.getName(i) + " </td><td>"
                         + cust.getAddress(i) + " </td><td>");
             }


         %>
         </table>
    </center>
    </body>
</html>
