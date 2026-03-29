package com.ecommerce.filters;

import java.io.IOException;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebFilter(filterName = "AdminAuthFilter", urlPatterns = {"/admin.jsp", "/admin_*.jsp", "/Admin*"})
public class AdminAuthFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Inicialización del filtro (no requerida en este caso)
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        
        HttpSession session = httpRequest.getSession(false);
        
        boolean isLoggedIn = (session != null && session.getAttribute("adminUser") != null);

        if (isLoggedIn) {
            // El usuario está autenticado, permitir que la petición continúe su flujo normal
            chain.doFilter(request, response);
        } else {
            // No hay sesión, bloquear acceso y redirigir al login
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/login.jsp");
        }
    }

    @Override
    public void destroy() {
        // Liberación de recursos (no requerida en este caso)
    }
}
