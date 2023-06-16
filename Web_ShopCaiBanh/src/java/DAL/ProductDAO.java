/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Category;
import Model.Product;
import java.util.List;
import java.sql.PreparedStatement;// lệnh có đối số
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class ProductDAO extends DBContext {

    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        // lấy dữ liệu bảng product+ category
        String sql = "SELECT * FROM product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("product_id"));
                p.setName(rs.getString("product_name"));
                p.setPrice(rs.getDouble("price"));
                p.setStock(rs.getString("stock"));
                //p.setCategory(new Category(rs.getInt("category_id"), rs.getString("category_name")));
                p.setImg(rs.getString("img"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getLast() {
        String sql = "select top 1 * from product order by product_id desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("product_id"));
                p.setName(rs.getString("product_name"));
                p.setPrice(rs.getDouble("price"));
                p.setStock(rs.getString("stock"));
                //    p.setCategory(new Category(rs.getInt("category_id"), rs.getString("category_name")));
                p.setImg(rs.getString("img"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getProductByCID(String cid) {
        List<Product> list = new ArrayList<>();
        // lấy dữ liệu bảng product+ category
        String sql = "select * from Product\n"
                + "where category_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, cid);// truyền cid vào dấu ? thứ nhất
            ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("product_id"));
                p.setName(rs.getString("product_name"));
                p.setPrice(rs.getDouble("price"));
                p.setStock(rs.getString("stock"));
                //p.setCategory(new Category(rs.getInt("category_id"), rs.getString("category_name")));
                p.setCid(cid);
                p.setImg(rs.getString("img"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductByID(String pid) {
        String sql = "select * from Product\n"
                + "where product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, pid);
            ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("product_id"));
                p.setName(rs.getString("product_name"));
                p.setPrice(rs.getDouble("price"));
                p.setStock(rs.getString("stock"));
                //    p.setCategory(new Category(rs.getInt("category_id"), rs.getString("category_name")));
                p.setImg(rs.getString("img"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String sql = "select *from Product where product_name like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, "%" + txtSearch + "%");// truyền cid vào dấu ? thứ nhất
            ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("product_id"));
                p.setName(rs.getString("product_name"));
                p.setPrice(rs.getDouble("price"));
                p.setStock(rs.getString("stock"));
                //p.setCategory(new Category(rs.getInt("category_id"), rs.getString("category_name")));
                //p.setCid(txtSearch);
                p.setImg(rs.getString("img"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

//    //test có kết nối được với database không
//    public static void main(String[] args) {
//        ProductDAO p = new ProductDAO();
//        List<Product> list = p.getAll();
//        Product plast = p.getLast();
//        List<Product> listcID = p.getProductByCID("1");
//        List<Product> listSearch = p.searchByName("chocolate");
//        System.out.println(plast);
//        System.out.println(list);
//        System.out.println(listcID);
//        System.out.println(listSearch);
//    }
}
