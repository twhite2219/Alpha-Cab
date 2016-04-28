<%-- 
    Document   : deleteDriverCheck
    Created on : 02-Dec-2015, 11:49:05
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
        <%
            Drivers drive = new Drivers();
            
            String name = request.getParameter("name");
            
            drive.deleteDriver(name);
            
            %>
            
           <h1><%=name%> deleted from database!</h1>
           <form action="<%=request.getContextPath()%>/docs/editDriver" method="post">
                <button type="submit">Go back</button>
            </form>
    </body>
</html>
