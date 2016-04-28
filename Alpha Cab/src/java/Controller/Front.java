package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jamie
 */
public class Front extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getRequestURI().substring(request.getContextPath().length());
        String page = "/WEB-INF/docs/main.jsp";
        HttpSession session = request.getSession(true);
        String username = (String) session.getAttribute("username");

        //if user is admin display main else main2
        if (username.equals("admin")) {
            page = "/WEB-INF/docs/main.jsp";
        } else {
            page = "/WEB-INF/docs/main2.jsp";
        }
        //if id equals " " include specific jsp
        String include = "";
        if (id.equals("/Front")) {
            include = "loginPage.jsp";
        } else if (id.equals("/docs/index")) {
            include = "index.jsp";
        } else if (id.equals("/docs/dateJobs")) {
            include = "dateJobs.jsp";
        } else if (id.equals("/docs/listJobs")) {
            include = "listJobs.jsp";
        } else if (id.equals("/docs/listDrivers")) {
            include = "listDrivers.jsp";
        } else if (id.equals("/docs/listCustomers")) {
            include = "listCustomers.jsp";
        } else if (id.equals("/docs/editDriver")) {
            include = "editDriver.jsp";
        } else if (id.equals("/docs/addDriver")) {
            include = "addDriver.jsp";
        } else if (id.equals("/docs/deleteDriver")) {
            include = "deleteDriver.jsp";
        } else if (id.equals("/docs/addDriverCheck")) {
            include = "addDriverCheck.jsp";
        } else if (id.equals("/docs/deleteDriverCheck")) {
            include = "deleteDriverCheck.jsp";
        } else if (id.equals("/docs/dateReport")) {
            include = "dateReport.jsp";
        } else if (id.equals("/docs/dailyReport")) {
            include = "dailyReport.jsp";
        } else if (id.equals("/docs/changePricing")) {
            include = "changePricing.jsp";
        } else if (id.equals("/docs/priceIncrease")) {
            include = "priceIncrease.jsp";
        } else if (id.equals("/docs/priceDecrease")) {
            include = "priceDecrease.jsp";
        } else if (id.equals("/docs/dateServed")) {
            include = "dateServed.jsp";
        } else if (id.equals("/docs/listServed")) {
            include = "listServed.jsp";
        } else {
            include = "loginCheck.jsp";
        }

        getServletContext().log("Front received a request for " + id);
        request.setAttribute("doco", include);
        request.getRequestDispatcher(page).forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
