package com.ecommerce.controller;

import com.ecommerce.bo.User;
import com.ecommerce.dao.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO userDAO = new UserDAO();
        User adminUser = userDAO.authenticateAdmin(email, password);

        if (adminUser != null) {
            // Autenticación exitosa: crear sesión y almacenar objeto de negocio
            HttpSession session = request.getSession();
            session.setAttribute("adminUser", adminUser);
            
            // Redirección al panel principal. Asumimos que los HTML estáticos se convertirán a JSP.
            response.sendRedirect(request.getContextPath() + "/admin.jsp");
        } else {
            // Fallo en la autenticación: retornar al login con mensaje de error
            request.setAttribute("errorMessage", "Credenciales inválidas o no tiene permisos de administrador.");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}
