/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Models.Account;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Egamorft
 */
public class SignInController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Account account = (Account) request.getSession().getAttribute("account");
            if (account == null) {//chua dang nhap
                request.getRequestDispatcher("view/Login.jsp").forward(request, response);
            } else {//dang nhap roi
                response.sendRedirect("Home");
            }
        }
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
//        processRequest(request, response);
//        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Boolean remember = Boolean.parseBoolean(request.getParameter("remember"));

        Account account = new AccountDAO().login(username, password);
        if (account == null) {
            request.setAttribute("error", "Username or password incorrect");
            request.getRequestDispatcher("view/Login.jsp").forward(request, response);
        } else {
            if (remember) {
                //lưu vào cookie
                Cookie uCookie = new Cookie("username", username);
                uCookie.setMaxAge(-1);
                Cookie pCookie = new Cookie("password", password);
                pCookie.setMaxAge(-1);
                response.addCookie(uCookie);
                response.addCookie(pCookie);
//                session.setMaxInactiveInterval(-1);
            }
            request.getSession().setAttribute("account", account);
            response.sendRedirect("Home");
        }
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
