<%-- 
    Document   : dateServed
    Created on : 02-Dec-2015, 14:45:19
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
        <h1>Served</h1>
        <h2>Select a date</h2>
         <form action="<%=request.getContextPath()%>/docs/listServed" method="post">
        Date: <input type="date" name="date" required/>
        <input type="submit"/>
        </form>
    </body>
</html>
