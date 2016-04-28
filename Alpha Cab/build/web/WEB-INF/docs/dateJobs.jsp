<%-- 
    Document   : dateJobs
    Created on : Dec 1, 2015, 12:49:24 PM
    Author     : Jamie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select a date</title>
    </head>
    <body>
        <h1>Jobs</h1>
        <h2>Select a date</h2>
         <form action="<%=request.getContextPath()%>/docs/listJobs" method="post">
        Date: <input type="date" name="date">
        <input type="submit"/>
        </form>
    </body>
</html>
