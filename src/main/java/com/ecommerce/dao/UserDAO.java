package com.ecommerce.dao;

import com.ecommerce.bo.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

    /**
     * Autentica a un administrador en el sistema.
     * @param email Correo electrónico ingresado.
     * @param password Contraseña ingresada.
     * @return Objeto User si la autenticación es exitosa y es administrador activo. Null en caso contrario.
     */
    public User authenticateAdmin(String email, String password) {
        User admin = null;
        // La consulta exige estrictamente que el rol sea ADMIN y el estado ACTIVO
        String sql = "SELECT id, full_name, email, phone, address, role, status, created_at " +
                     "FROM users WHERE email = ? AND password = ? AND role = 'ADMIN' AND status = 'ACTIVO'";

        // El uso de try-with-resources asegura el cierre automático de las conexiones
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    admin = new User();
                    admin.setId(rs.getInt("id"));
                    admin.setFullName(rs.getString("full_name"));
                    admin.setEmail(rs.getString("email"));
                    // Por seguridad, no devolvemos la contraseña en el BO que viajará por la sesión
                    admin.setPhone(rs.getString("phone"));
                    admin.setAddress(rs.getString("address"));
                    admin.setRole(rs.getString("role"));
                    admin.setStatus(rs.getString("status"));
                    admin.setCreatedAt(rs.getTimestamp("created_at"));
                }
            }
        } catch (SQLException e) {
            System.err.println("Error en la autenticación del administrador: " + e.getMessage());
        }

        return admin;
    }
}
