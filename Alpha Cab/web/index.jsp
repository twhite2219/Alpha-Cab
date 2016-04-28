<%-- 
    Document   : index
    Created on : 27-Nov-2015, 17:45:37
    Author     : Jamie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
    <center><a href="${pageContext.request.contextPath}/"><img src="https://d2gg9evh47fn9z.cloudfront.net/thumb_COLOURBOX6702949.jpg"/></a></center>
        <h1 align="center">Welcome to Alpha Cab</h1>
    <center>
        <div id="button1">
        <form action ="<%=request.getContextPath()%>/customerBook.jsp">
            <button type="submit">Customer</button>
        </form>
            <br>
        </div>
            <div id="button1">
        <form action ="<%=request.getContextPath()%>/login.jsp" method="post">
            <button type="submit">Login</button>
        </form>
        </div>
    </center>
</body>
</html>