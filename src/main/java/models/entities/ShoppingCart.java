package models.entities;

public class ShoppingCart extends Products{
    private int quantity;

    public ShoppingCart(){
       super();
   }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
