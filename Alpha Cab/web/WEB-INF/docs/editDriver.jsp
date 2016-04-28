<%-- 
    Document   : editDriver
    Created on : 01-Dec-2015, 17:32:08
    Author     : Jamie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edit Drivers</h1>
        <h2>Select an option</h2>
        <form action="<%=request.getContextPath()%>/docs/addDriver" method="post">
          <button type="submit">Add Driver</button>
        </form>
          <form action="<%=request.getContextPath()%>/docs/deleteDriver" method="post">
              <button type="submit">Delete Driver</button>
        </form>
    </body>
</html>
