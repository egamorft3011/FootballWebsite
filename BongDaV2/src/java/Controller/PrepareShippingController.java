/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.OrderDAO;
import DAO.OrderDetailDAO;
import DAO.ShippingDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Models.Cart;
import Models.Order;
import Models.Shipping;

/**
 *
 * @author Egamorft
 */
public class PrepareShippingController extends HttpServlet {

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
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        Map<String, Cart> carts = (Map<String, Cart>) session.getAttribute("carts");
        if (carts == null) {
            carts = new LinkedHashMap<>();
        }
        //tính tổng tiền
        float totalMoney = 0;
        for (Map.Entry<String, Cart> entry : carts.entrySet()) {
            String productId = entry.getKey();
            Cart cart = entry.getValue();
            totalMoney += cart.getQuantity() * cart.getProduct().getPrice();
        }
        String name = request.getParameter("name");
        String dob = request.getParameter("dob");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String note = request.getParameter("note");

        //lưu vào csdl
        //lưu shipping
        Shipping shipping = Shipping.builder()
                .name(name)
                .DOB(dob)
                .email(email)
                .phone(phone)
                .address(address)
                .note(note).build();
        int shippingId = new ShippingDAO().insertReturnId(shipping);

        //lưu order
        Order order = Order.builder()
                .customer(name)
                .shippingId(shippingId)
                .totalPrice(totalMoney)
                .note(note)
                .status("1").build();
        int orderId = new OrderDAO().insertReturnId(order);
        //lưu order detail
        boolean checkOrderDetail = new OrderDetailDAO().insert(carts, orderId);
        session.removeAttribute("carts");
        response.sendRedirect("thank");
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
