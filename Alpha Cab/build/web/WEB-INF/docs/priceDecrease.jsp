<%-- 
    Document   : priceDecrease
    Created on : 02-Dec-2015, 20:28:02
    Author     : Jamie
--%>

<%@page import="Model.Distance"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Distance dist = new Distance();
        dist.decreasePrice();
        int decrease = Distance.newprice + 2;
        %>
        <h1>Price decreased</h1>
        <h2>£<%=decrease%> (per mile)</h2>
        <br>
        <form action="<%=request.getContextPath()%>/docs/changePricing" method="post">
        <button type="submit">Go back</button>
        </form>
    </body>
</html>
