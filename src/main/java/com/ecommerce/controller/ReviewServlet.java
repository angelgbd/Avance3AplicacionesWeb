package com.ecommerce.controller;

import com.ecommerce.bo.Review;
import com.ecommerce.dao.ReviewDAO;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "ReviewServlet", urlPatterns = {"/AdminReviews"})
public class ReviewServlet extends HttpServlet {

    private final ReviewDAO reviewDAO = new ReviewDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Review> reviews = reviewDAO.getAllReviews();
        request.setAttribute("reviewsList", reviews);
        request.getRequestDispatcher("/admin/admin_resenas.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        
        if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            reviewDAO.deleteReview(id);
        }
        
        response.sendRedirect(request.getContextPath() + "/AdminReviews");
    }
}