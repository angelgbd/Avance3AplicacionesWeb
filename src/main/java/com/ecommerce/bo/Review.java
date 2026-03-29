package com.ecommerce.bo;

import java.sql.Timestamp;

public class Review {
    private int id;
    private int productId;
    private int userId;
    private int rating;
    private String comment;
    private Timestamp createdAt;

    // Objetos anidados para mostrar datos cruzados en el panel de administrador
    private User user;
    private Product product;

    public Review() {}

    public Review(int id, int productId, int userId, int rating, String comment, Timestamp createdAt) {
        this.id = id;
        this.productId = productId;
        this.userId = userId;
        this.rating = rating;
        this.comment = comment;
        this.createdAt = createdAt;
    }

    // Getters y Setters
    public int getId() {
        return id; 
    }
    
    public void setId(int id) {
        this.id = id; 
    }
    
    public int getProductId() {
        return productId; 
    }
    
    public void setProductId(int productId) {
        this.productId = productId; 
    }
    
    public int getUserId() { 
        return userId; 
    }
    
    public void setUserId(int userId) {
        this.userId = userId; 
    }
    
    public int getRating() {
        return rating; 
    }
    
    public void setRating(int rating) {
        this.rating = rating; 
    }
    
    public String getComment() {
        return comment; 
    }
    
    public void setComment(String comment) {
        this.comment = comment; 
    }
    
    public Timestamp getCreatedAt() {
        return createdAt; 
    }
    
    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt; 
    }
    
    public User getUser() {
        return user; 
    }
    
    public void setUser(User user) {
        this.user = user; 
    }
    
    public Product getProduct() {
        return product; 
    }
    
    public void setProduct(Product product) {
        this.product = product; 
    }
}
