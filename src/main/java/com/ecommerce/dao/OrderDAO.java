package com.ecommerce.dao;

import com.ecommerce.bo.Order;
import com.ecommerce.bo.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDAO {

    /**
     * Obtiene todos los pedidos cruzando datos con la tabla de usuarios
     * para mostrar el correo del cliente en la vista de administrador.
     */
    public List<Order> getAllOrdersForAdmin() {
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT o.id, o.total_amount, o.status, o.created_at, u.email " +
                     "FROM orders o JOIN users u ON o.user_id = u.id ORDER BY o.created_at DESC";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                Order order = new Order();
                order.setId(rs.getInt("o.id"));
                order.setTotalAmount(rs.getDouble("o.total_amount"));
                order.setStatus(rs.getString("o.status"));
                order.setCreatedAt(rs.getTimestamp("o.created_at"));

                User user = new User();
                user.setEmail(rs.getString("u.email"));
                
                
                orders.add(order);
            }
        } catch (SQLException e) {
            System.err.println("Error al obtener pedidos: " + e.getMessage());
        }
        return orders;
    }

    public boolean updateOrderStatus(int orderId, String status) {
        String sql = "UPDATE orders SET status = ? WHERE id = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setString(1, status);
            pstmt.setInt(2, orderId);
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("Error al actualizar el estado del pedido: " + e.getMessage());
            return false;
        }
    }
}
