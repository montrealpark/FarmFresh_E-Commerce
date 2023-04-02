package models.entities;

public class Wishlist{

    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private int userId;
    private String name;
    private float price;
    private String unit;

    private int productId;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Wishlist(int id, String name, float price, String unit, int userId, int productId){
        this.id = id;
        this.name = name;
        this.price = price;
        this.unit = unit;
        this.userId = userId;
        this.productId = productId;
    }

    public Wishlist(String name, float price, String unit, int userId, int productId){
        this.name = name;
        this.price = price;
        this.unit = unit;
        this.userId = userId;
        this.productId = productId;
    }
}
