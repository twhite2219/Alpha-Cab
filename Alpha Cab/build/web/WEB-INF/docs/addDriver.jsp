<%-- 
    Document   : addDriver
    Created on : 01-Dec-2015, 16:53:24
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
        <h1>Add Driver</h1>
        <h2>Fill in drivers details below</h2>
        <form action="<%=request.getContextPath()%>/docs/addDriverCheck" method="post">
          Name: <input type="text" name="name" required/>
          <br>
          Registration: <input type="text" name="registration" required/>
          <br>
          <button type="submit">Add Driver</button>
        </form>
    </body>
</html>
