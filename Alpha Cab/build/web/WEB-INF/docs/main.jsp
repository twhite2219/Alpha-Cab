<%-- 
    Document   : main
    Created on : 27-Nov-2015, 17:46:34
    Author     : Jamie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Alpha Cab</title>

        <style>
            #header {
                color:yellow;
                font-size:23px;
                text-align:center;
                padding:3px;
                background-color:black;
                background-image:linear-gradient(45deg, yellow 25%, transparent 25%, transparent 75%, yellow 75%, black), 
                linear-gradient(45deg, yellow 25%, transparent 25%, transparent 75%, yellow 75%, black);
                background-size:40px 40px;
                background-position:0 0, 20px 20px
            }
            #nav {
                line-height:10px;
                background-color:black;
                height:10px;
                width:auto;
                padding:10px;
            }
            #nav a {
                color:yellow;
                text-decoration:none;
            }
            #section {
                text-align: center;
                width:auto;
                padding:10px;
            }
        </style>
    </head>
    <body>
        <div id="header">
            <h1 style='background:black; width:260px; display:inline-block;'>Alpha Cab</h1>
        </div>
    <center>
        <div id ="nav">
            
            <a href="<%=request.getContextPath()%>/docs/index">Home&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    <a href="<%=request.getContextPath()%>/docs/dateJobs">Jobs&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    <a href="<%=request.getContextPath()%>/docs/listDrivers">Drivers&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    <a href="<%=request.getContextPath()%>/docs/listCustomers">Customers&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    <a href="<%=request.getContextPath()%>/docs/dateReport">Daily Report&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    <a href="<%=request.getContextPath()%>/docs/dateServed">Served&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    <a href="<%=request.getContextPath()%>/docs/editDriver">Edit Drivers&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    <a href="<%=request.getContextPath()%>/docs/changePricing">Pricing&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    <a href="<%=request.getContextPath()%>/">Logout&nbsp;&nbsp;&nbsp;&nbsp;</a>
        </div> 
    </center>

        <div id ="section">
            <jsp:include page="${doco}" flush="true"/>
        </div>
    </body>
</html>
