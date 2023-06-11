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

    //lấy tất cả dữ liệu từ bảng category
    //select * from Category
    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM Category RIGHT JOIN Product \n"
                + "ON Category.category_id = Product.category_id";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("product_id"));
                p.setName(rs.getString("product_name"));
                p.setPrice(rs.getDouble("price"));
                p.setStock(rs.getString("stock"));
                p.setCategory(new Category(rs.getInt("category_id"), rs.getString("category_name")));
                p.setImg(rs.getString("img"));
                p.setDetail(rs.getString("detail"));
                p.setTime(rs.getString("storage_time"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //test có kết nối được với database không
    public static void main(String[] args) {
        ProductDAO p = new ProductDAO();
        List<Product> list = p.getAll();
        System.out.println(list);
    }

}
