package com.ecommerce.controller;

import com.ecommerce.bo.Order;
import com.ecommerce.dao.OrderDAO;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "OrderServlet", urlPatterns = {"/AdminOrders"})
public class OrderServlet extends HttpServlet {

    private final OrderDAO orderDAO = new OrderDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Order> orders = orderDAO.getAllOrdersForAdmin();
        request.setAttribute("ordersList", orders);
        request.getRequestDispatcher("/admin/admin_pedidos.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        
        if ("updateStatus".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            String status = request.getParameter("status");
            
            // Validar que el estado sea uno de los permitidos por el ENUM de la base de datos
            if (status.equals("PENDIENTE") || status.equals("ENVIADO") || status.equals("ENTREGADO")) {
                orderDAO.updateOrderStatus(id, status);
            }
        }
        
        // Patrón Post-Redirect-Get
        response.sendRedirect(request.getContextPath() + "/AdminOrders");
    }
}
