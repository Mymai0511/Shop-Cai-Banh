/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Category;
import java.util.List;
import Model.Product;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class ProductDAO extends DBContext {

    Connection cnn;
    PreparedStatement st;
    ResultSet rs;

    //lấy tất cả dữ liệu trong bảng product
    //select * from product
    public void connect() {
        try {
            cnn = super.connection;
            if (cnn != null) {
                System.out.println("Connect success");
            }
            System.out.println("Connect succesful");
        } catch (Exception e) {
            System.out.println("Connect fail: " + e.getMessage());
        }
    }

    public ProductDAO() {
        connect();
    }

    //select all
    public List<Product> selectAllAccounts() {
        List<Student> myListOfAccounts = new ArrayList();
        String sql = "Select * from Student";
        try {
            st = cnn.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Product pro = new Product();
                pro.setId(rs.getInt(1));
                pro.setName(rs.getString(2));
                pro.setPrice(rs.getDouble(3));
                pro.setStock(rs.getInt(4));
                pro.set(rs.getString(2));
                pro.setName(rs.getString(2));
                pro.setName(rs.getString(2));
                
                myListOfAccounts.add(pro);
            }
        } catch (SQLException e) {
            System.out.println("getFullListOfStudents: " + e.getMessage());
        }
        return myListOfAccounts;
    }
    
        private int id;
    private String name;
    private double price;
    private int stock;
    private Category category;
    private String img;
    private String description;
    private Date createDate;
}
