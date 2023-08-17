/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author Admin
 */
public class OrderDetail {
    private String pName;
    private int id;
    private int oID, pID, quantity;
    private double price;

    public OrderDetail(String pName, int pID, int quantity, double price) {
        this.pName = pName;
        this.pID = pID;
        this.quantity = quantity;
        this.price = price;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public OrderDetail(int pID, int quantity, double price) {
        this.pID = pID;
        this.quantity = quantity;
        this.price = price;
    }

    public OrderDetail(int id, int oID, int pID, int quantity, double price) {
        this.id = id;
        this.oID = oID;
        this.pID = pID;
        this.quantity = quantity;
        this.price = price;
    }

    public OrderDetail() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getoID() {
        return oID;
    }

    public void setoID(int oID) {
        this.oID = oID;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "id=" + id + ", oID=" + oID + ", pID=" + pID + ", quantity=" + quantity + ", price=" + price + '}';
    }

   
}
