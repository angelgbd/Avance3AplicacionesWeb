package com.ecommerce.bo;

public class OrderDetail {
    private int id;
    private int orderId;
    private int productId;
    private int quantity;
    private double unitPrice;

    // Objeto anidado para facilitar la visualización del nombre del producto en las vistas
    private Product product;

    public OrderDetail() {}

    public OrderDetail(int id, int orderId, int productId, int quantity, double unitPrice) {
        this.id = id;
        this.orderId = orderId;
        this.productId = productId;
        this.quantity = quantity;
        this.unitPrice = unitPrice;
    }

    // Getters y Setters
    public int getId() {
        return id; 
    }
    
    public void setId(int id) {
        this.id = id; 
    }
    
    public int getOrderId() {
        return orderId; 
    }
    
    public void setOrderId(int orderId) {
        this.orderId = orderId; 
    }
    
    public int getProductId() {
        return productId; 
    }
    
    public void setProductId(int productId) {
        this.productId = productId; 
    }
    
    public int getQuantity() {
        return quantity; 
    }
    
    public void setQuantity(int quantity) {
        this.quantity = quantity; 
    }
    
    public double getUnitPrice() {
        return unitPrice; 
    }
    
    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice; 
    }
    
    public Product getProduct() {
        return product; 
    }
    
    public void setProduct(Product product) {
        this.product = product; 
    }
    
}

