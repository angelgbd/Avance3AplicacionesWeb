package com.ecommerce.bo;

import java.sql.Timestamp;
import java.util.List;

public class Order {
    private int id;
    private int userId;
    private double totalAmount;
    private String shippingAddress;
    private String status;
    private Timestamp createdAt;
    
    // Lista para almacenar los detalles asociados a este pedido
    private List<OrderDetail> details;

    public Order() {}

    public Order(int id, int userId, double totalAmount, String shippingAddress, String status, Timestamp createdAt) {
        this.id = id;
        this.userId = userId;
        this.totalAmount = totalAmount;
        this.shippingAddress = shippingAddress;
        this.status = status;
        this.createdAt = createdAt;
    }

    // Getters y Setters
    
    public int getId() {
        return id; 
    }
    
    public void setId(int id) {
        this.id = id; 
    }
    
    public int getUserId() {
        return userId; 
    }
    
    public void setUserId(int userId) {
        this.userId = userId; 
    }
    
    public double getTotalAmount() {
        return totalAmount; 
    }
    
    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount; 
    }
    
    public String getShippingAddress() {
        return shippingAddress; 
    }
    
    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress; 
    }
    
    public String getStatus() {
        return status; 
    }
    
    public void setStatus(String status) {
        this.status = status; 
    }
    
    public Timestamp getCreatedAt() {
        return createdAt; 
    }
    
    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt; 
    }
    
    public List<OrderDetail> getDetails() {
        return details; 
    }
   
    public void setDetails(List<OrderDetail> details) {
        this.details = details; 
    }
}
