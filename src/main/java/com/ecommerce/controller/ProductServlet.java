package com.ecommerce.controller;

import com.ecommerce.bo.Product;
import com.ecommerce.dao.ProductDAO;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "ProductServlet", urlPatterns = {"/AdminProducts"})
public class ProductServlet extends HttpServlet {

    private final ProductDAO productDAO = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        if (action == null) {
            action = "list";
        }

        switch (action) {
            case "new":
                // Muestra el formulario vacío para crear
                request.getRequestDispatcher("/admin_crear_producto.jsp").forward(request, response);
                break;
            case "edit":
                // Obtiene el producto y muestra el formulario de edición
                int idToEdit = Integer.parseInt(request.getParameter("id"));
                Product existingProduct = productDAO.getProductById(idToEdit);
                request.setAttribute("product", existingProduct);
                request.getRequestDispatcher("/admin_editar_producto.jsp").forward(request, response);
                break;
            default:
                // Lista todos los productos (vista por defecto)
                List<Product> products = productDAO.getAllProducts();
                request.setAttribute("productsList", products);
                request.getRequestDispatcher("/admin_productos.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");

        if ("insert".equals(action)) {
            Product newProduct = new Product();
            newProduct.setName(request.getParameter("name"));
            newProduct.setDescription(request.getParameter("description"));
            newProduct.setPrice(Double.parseDouble(request.getParameter("price")));
            newProduct.setStock(Integer.parseInt(request.getParameter("stock")));
            
            productDAO.createProduct(newProduct);
            
        } else if ("update".equals(action)) {
            Product product = new Product();
            product.setId(Integer.parseInt(request.getParameter("id")));
            product.setName(request.getParameter("name"));
            product.setDescription(request.getParameter("description"));
            product.setPrice(Double.parseDouble(request.getParameter("price")));
            product.setStock(Integer.parseInt(request.getParameter("stock")));
            
            productDAO.updateProduct(product);
            
        } else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            productDAO.deleteProduct(id);
        }

        // Independientemente de la acción POST, aplicamos el patrón PRG (Post-Redirect-Get)
        // para evitar reenvíos de formularios si el usuario recarga la página.
        response.sendRedirect(request.getContextPath() + "/AdminProducts");
    }
}
