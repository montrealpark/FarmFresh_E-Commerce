package models.entities;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;

public class Order{
    private int id;
    private String orderNumber;
    private int userId;
    private float total;
    private String orderDate;

    public Order(String orderNumber, int userId, float total){
        this.orderNumber = orderNumber;
        this.userId = userId;
        this.total = total;
    }
    public Order(int id, String orderNumber, int userId, float total, String orderDate){
        this.id = id;
        this.orderNumber = orderNumber;
        this.userId = userId;
        this.orderDate = orderDate;
        this.total = total;
    }

    public int getId() {
        return id;
    }

    public int getUserId() {
        return userId;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public float getTotal() {
        return total;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }
}
