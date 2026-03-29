package com.ecommerce.bo;

import java.sql.Timestamp;

public class Product {
    private int id;
    private String name;
    private String description;
    private double price;
    private int stock;
    private Timestamp createdAt;

    public Product() {}

    public Product(int id, String name, String description, double price, int stock, Timestamp createdAt) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.stock = stock;
        this.createdAt = createdAt;
    }

    // Getters y Setters
    
    public int getId() {
        return id; 
    }
    
    public void setId(int id) {
        this.id = id; 
    }
   
    public String getName() { 
        return name; 
    }
    
    public void setName(String name) {
        this.name = name; 
    }
    
    public String getDescription() {
        return description; 
    }
    
    public void setDescription(String description) {
        this.description = description; 
    }
    
    public double getPrice() {
        return price; 
    }
    
    public void setPrice(double price) {
        this.price = price; 
    }
   
    public int getStock() {
        return stock; 
    }
    
    public void setStock(int stock) {
        this.stock = stock; 
    }
    
    public Timestamp getCreatedAt() {
        return createdAt; 
    }
    
    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt; 
    }
}
