package com.ecommerce.dao;

import com.ecommerce.bo.Product;
import com.ecommerce.bo.Review;
import com.ecommerce.bo.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReviewDAO {

    /**
     * Obtiene todas las reseñas cruzando datos con usuarios y productos
     * para la vista del administrador.
     */
    public List<Review> getAllReviews() {
        List<Review> reviews = new ArrayList<>();
        String sql = "SELECT r.id, r.rating, r.comment, r.created_at, " +
                     "u.full_name as user_name, p.name as product_name " +
                     "FROM reviews r " +
                     "JOIN users u ON r.user_id = u.id " +
                     "JOIN products p ON r.product_id = p.id " +
                     "ORDER BY r.created_at DESC";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                Review r = new Review();
                r.setId(rs.getInt("r.id"));
                r.setRating(rs.getInt("r.rating"));
                r.setComment(rs.getString("r.comment"));
                r.setCreatedAt(rs.getTimestamp("r.created_at"));

                User u = new User();
                u.setFullName(rs.getString("user_name"));
                r.setUser(u);

                Product p = new Product();
                p.setName(rs.getString("product_name"));
                r.setProduct(p);

                reviews.add(r);
            }
        } catch (SQLException e) {
            System.err.println("Error al obtener reseñas: " + e.getMessage());
        }
        return reviews;
    }

    public boolean deleteReview(int id) {
        String sql = "DELETE FROM reviews WHERE id = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setInt(1, id);
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("Error al eliminar reseña: " + e.getMessage());
            return false;
        }
    }
}
