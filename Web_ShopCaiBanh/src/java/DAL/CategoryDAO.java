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
public class CategoryDAO extends DBContext {

    //lấy tất cả dữ liệu từ bảng category
    //select * from Category
    public List<Category> getAll() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from Category";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi
            while (rs.next()) {
                Category c = new Category();
                c.setId(rs.getInt("category_id"));
                c.setName(rs.getString("category_name"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    // đếm số lương product trong database theo CID
    public int getTotalProductByCID(String cid) {

        String sql = "select count (*) from product\n"
                + "where category_id = ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public List<Product> pagingProductByCID(String cid, int index) {
        List<Product> list = new ArrayList<>();

        String sql = "select * from Product\n"
                + "where category_id = ?\n"
                + "order by product_id\n"
                + "offset ? rows fetch next 6 rows only;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, cid);
            st.setInt(2, (index - 1) * 6);
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

    //test có kết nối được với database không
    public static void main(String[] args) {
        CategoryDAO c = new CategoryDAO();
        List<Category> list = c.getAll();
        int a = c.getTotalProductByCID("1");
        List<Product> listPA = c.pagingProductByCID("1", 1);
        System.out.println(list.get(0).getName());
        for (Product o : listPA) {
            System.out.println(o);
        }
        System.out.println(a);
    }
}
