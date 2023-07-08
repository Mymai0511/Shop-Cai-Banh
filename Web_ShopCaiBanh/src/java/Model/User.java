/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Admin
 */
public class User {

    private int id;
    private String name;
    private String email;
    private String password;
    private String address;
    private Boolean gender;
    private String phone;
    private Boolean isAdmin;
    private Boolean isSell;

    public User() {
    }

    public User(String name, String password, String address, String phone, Boolean isAdmin, Boolean isSell) {
        this.name = name;
        this.password = password;
        this.address = address;
        this.phone = phone;
        this.isAdmin = isAdmin;
        this.isSell = isSell;
    }

    public User(String name, String password) {
        this.name = name;
        this.password = password;
    }

    public User(String name, String password, Boolean isAdmin, Boolean isSell) {
        this.name = name;
        this.password = password;
        this.isAdmin = isAdmin;
        this.isSell = isSell;
    }
    

    public User(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
    }

    public User(int id, String name, String email, String password) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
    }

    public User(int id, String name, String email, String password, String address) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.address = address;
    }

    public User(int id, String name, String email, String password, String address, Boolean gender) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.address = address;
        this.gender = gender;
    }

    public User(int id, String name, String email, String password, String address, Boolean gender, String phone) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.address = address;
        this.gender = gender;
        this.phone = phone;
    }

    public User(int id, String name, String email, String password, String address, Boolean gender, String phone, Boolean isAdmin) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.address = address;
        this.gender = gender;
        this.phone = phone;
        this.isAdmin = isAdmin;
    }

    public User(int id, String name, String email, String password, String address, Boolean gender, String phone, Boolean isAdmin, Boolean isSell) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.address = address;
        this.gender = gender;
        this.phone = phone;
        this.isAdmin = isAdmin;
        this.isSell = isSell;
    }

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Boolean getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(Boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public Boolean getIsSell() {
        return isSell;
    }

    public void setIsSell(Boolean isSell) {
        this.isSell = isSell;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", address=" + address + ", gender=" + gender + ", phone=" + phone + ", isAdmin=" + isAdmin + ", isSell=" + isSell + '}';
    }

    
}
