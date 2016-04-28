<%-- 
    Document   : deleteDriver
    Created on : 01-Dec-2015, 17:37:53
    Author     : Jamie
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Drivers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Delete Driver</h1>
        <h2>Select the driver you want to delete</h2>
<%
    Drivers drive = new Drivers();
%>


<center>
    <form action="<%=request.getContextPath()%>/docs/deleteDriverCheck" method="post">
    Name: <select name="name" required/>
        <%
            for (int i = 0; i < drive.getDriverSize(); i++) {%>
            <option value="<%=drive.getName(i)%>"><%=drive.getName(i)%></option>
        <%}
        %>
    </select><br/><br/>
    <button type="submit">Delete Driver</button>
    </form>
</center>
    </body>
</html>
