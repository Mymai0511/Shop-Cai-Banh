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

    public void deleteProduct(String pid) {
        List<Product> list = new ArrayList<>();
        String sql = "delete from Product where product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, pid);// truyền pid vào dấu ? thứ nhất
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void AddProduct(String name, String price, String stock, String image,
            String title, String description, String categoryID) {
        //double price1 = Double.parseDouble(price);
        String sql = "INSERT INTO Product ( product_name, price, stock, img, \n"
                + "title,description, category_id) \n"
                + "values (?,?,?,?,?,?,?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, name);// truyền pid vào dấu ? thứ nhất
            st.setString(2, price);
            st.setString(3, stock);
            st.setString(4, image);
            st.setString(5, title);
            st.setString(6, description);
            st.setString(7, categoryID);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void EditProduct(String productID, String name, String price, String stock, String image,
            String title, String description, String categoryID) {
//        double price1 = Double.parseDouble(price);
//        int pID1 = Integer.parseInt(productID);
        String sql = "update product\n"
                + "set [product_name] = ?,\n"
                + "price = ?,\n"
                + "stock = ?,\n"
                + "img = ?,\n"
                + "title = ?,\n"
                + "[description] = ?,\n"
                + "category_id = ?\n"
                + "where product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, name);// truyền pid vào dấu ? thứ nhất
            st.setString(2, price);
            st.setString(3, stock);
            st.setString(4, image);
            st.setString(5, title);
            st.setString(6, description);
            st.setString(7, categoryID);
            st.setString(8, productID);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //test có kết nối được với database không
    public static void main(String[] args) {
        ProductDAO p = new ProductDAO();
        List<Product> list = p.getAll();
        Product plast = p.getLast();
        List<Product> listcID = p.getProductByCID("1");
        List<Product> listSearch = p.searchByName("chocolate");
        p.AddProduct("23123", "1.2", "dfdf", "fadfd", "fwdf", "vdv", "2");
        System.out.println(plast);
        System.out.println(list);
        System.out.println(listcID);
        System.out.println(listSearch);
    }
}
