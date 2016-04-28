<%-- 
    Document   : loginCheck
    Created on : 27-Nov-2015, 18:22:11
    Author     : Jamie
--%>

<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Login"%>
<%
        Login log = new Login();
        
        String username = request.getParameter("username"); 
        String password = request.getParameter("password");
        session.setAttribute("username", username);
        
        if(log.getUsername().contains(username) && log.getPassword().contains(password)) {
            response.sendRedirect(request.getContextPath() + "/docs/index");
        } else {
            response.sendRedirect("loginError.jsp");
        }
        
%>  
