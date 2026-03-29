package com.ecommerce.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    // Configuración de la base de datos. 
    private static final String URL = "jdbc:mysql://localhost:3306/ecommerce_db?useSSL=false&serverTimezone=UTC";
    private static final String USER = "root"; 
    private static final String PASSWORD = "root"; 

    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            System.err.println("Error: Driver de MySQL no encontrado. Verifica que el conector .jar esté en tu WEB-INF/lib.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("Error: No se pudo establecer la conexión con la base de datos.");
            e.printStackTrace();
        }
        return connection;
    }
}
