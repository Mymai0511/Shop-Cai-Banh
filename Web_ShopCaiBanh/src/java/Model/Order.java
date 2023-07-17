/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Order {

    private int id;
    private int cID;
    private String Date;
    private double totalmoney;
    private String notes;

    public Order() {
    }

    public Order(int id, int cID, String Date, double totalmoney) {
        this.id = id;
        this.cID = cID;
        this.Date = Date;
        this.totalmoney = totalmoney;
    }

    public Order(int id, int cID, String Date, double totalmoney, String notes) {
        this.id = id;
        this.cID = cID;
        this.Date = Date;
        this.totalmoney = totalmoney;
        this.notes = notes;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getcID() {
        return cID;
    }

    public void setcID(int cID) {
        this.cID = cID;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String Date) {
        this.Date = Date;
    }

    public double getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(double totalmoney) {
        this.totalmoney = totalmoney;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", cID=" + cID + ", Date=" + Date + ", totalmoney=" + totalmoney + ", notes=" + notes + '}';
    }

    

}
