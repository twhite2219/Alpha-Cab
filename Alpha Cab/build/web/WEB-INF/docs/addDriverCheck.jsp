<%-- 
    Document   : addDriverCheck
    Created on : 01-Dec-2015, 16:58:07
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
            String registration = request.getParameter("registration");
            registration = registration.replaceAll("\\s+","");
            String password = name.replaceAll("\\s+","");
            int size = drive.getDriverSize();
            int count = 0;
            System.out.println(size);
            
            for (int i = 0; i < size; i++) {
                    if (name.equals(drive.getName(i).toString())) {
                        %>
                        <h1>Error <%=name%> already in database!</h1><%
                        break;
                    } else {
                        count++;
                    }
                }
            if (count == size) {
                        %>
                <h1><%=name%> added to the database</h1><%
                                drive.addDriver(name, registration, password);
                            }
                        %>
            <form action="<%=request.getContextPath()%>/docs/editDriver" method="post">
                <button type="submit">Go back</button>
            </form>
    </body>
</html>
