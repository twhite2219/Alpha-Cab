<%-- 
    Document   : changePricing
    Created on : 02-Dec-2015, 20:25:10
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
        <h1>Pricing</h1>
        <%
            int price = 2 + Distance.newprice;
            %>
        <h2>Current cost for journeys under 5 miles = £<%=(price)%> (per mile)</h2>
        
        <form action="<%=request.getContextPath()%>/docs/priceIncrease" method="post">
            <button type="submit">Increase Price</button>
        </form>
            <form action="<%=request.getContextPath()%>/docs/priceDecrease" method="post">
            <button type="submit">Decrease Price</button>
        </form>
    </body>
</html>
