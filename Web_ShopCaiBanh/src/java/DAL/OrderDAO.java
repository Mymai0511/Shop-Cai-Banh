/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Cart;
import Model.CartItem;
import Model.Order;
import Model.OrderDetail;
import Model.Product;
import Model.User;
import java.util.List;
import java.sql.PreparedStatement;// lệnh có đối số
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class OrderDAO extends DBContext {

    //lấy tất cả dữ liệu từ bảng category
    //select * from Category
    public List<Order> getAll() {
        List<Order> list = new ArrayList<>();
        String sql = "select * from Orders";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi
            while (rs.next()) {
                Order c = new Order();
                c.setId(rs.getInt("order_id"));
                c.setcID(rs.getInt("user_id"));
                c.setDate(rs.getString("order_date"));
                c.setTotalmoney(rs.getDouble("total"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<OrderDetail> getDetailByOrdersID(String oid) {
        List<OrderDetail> list = new ArrayList<>();
        String sql = "SELECT  quantity, OrderDetail.product_id,  OrderDetail.price, Product.product_name FROM Product INNER JOIN OrderDetail \n"
                + "ON OrderDetail.product_id = Product.product_id where order_id = ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, oid);
            ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi
            while (rs.next()) {
                OrderDetail c = new OrderDetail();
                c.setQuantity(rs.getInt("quantity"));
                c.setpID(rs.getInt("product_id"));
                c.setPrice(rs.getFloat("price"));
                c.setpName(rs.getString("product_name"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Order> getOrderById(String id) {
        List<Order> list = new ArrayList<>();
        String sql = "select * from Orders where user_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, id);
            ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi
            while (rs.next()) {
                Order c = new Order();
                c.setId(rs.getInt("order_id"));
                c.setcID(rs.getInt("user_id"));
                c.setDate(rs.getString("order_date"));
                c.setTotalmoney(rs.getDouble("total"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void addOrder(User c, Cart cart) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        String sql = "INSERT INTO [Orders] ( user_id, order_date, total) values (?, ?, ?);";
        try {
            //them order
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setInt(1, c.getId());
            st.setString(2, date);
            st.setDouble(3, cart.getTotalMoney());
            st.executeUpdate();
            //lay id cua order vua add -order_id lớn nhất
            String sql2 = " select top 1 order_id from [orders] order by order_id desc";
            PreparedStatement st2 = connection.prepareStatement(sql2);// kết nối với sql2
            ResultSet rs2 = st2.executeQuery();// trả về kết quả từ sql2-
            //add bang OrderDetail
            if (rs2.next()) {
                int oid = rs2.getInt(1);
                for (CartItem item : cart.getItems()) {
                    String sql3 = "INSERT INTO [orderdetail] ( order_id, product_id, price, quantity) values (?, ?, ?, ?);";
                    PreparedStatement st3 = connection.prepareStatement(sql3);// kết nối với sql3
                    st3.setInt(1, oid);
                    st3.setInt(2, item.getProduct().getId());
                    st3.setDouble(3, item.getPrice());
                    st3.setInt(4, item.getQuantity());
                    st3.executeUpdate();
                }
            }
            //Cap nhap lai so luong san pham
            String sql4 = "update product set stock=stock- ? where product_id = ?";
            PreparedStatement st4 = connection.prepareStatement(sql4);
            for (CartItem i : cart.getItems()) {
                st4.setInt(1, i.getQuantity());
                st4.setInt(2, i.getProduct().getId());
                st4.executeUpdate();
            }
        } catch (Exception e) {
            
        }
    }

    public void deleteOrderByOrderID(String oID) {
        String sql = "delete from orderdetail where order_id = ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, oID);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    

    public static void main(String[] args) {
        OrderDAO dao = new OrderDAO();
        List<OrderDetail> list1 = dao.getDetailByOrdersID("2");

        List<Order> list = dao.getOrderById("1");
        for (OrderDetail o : list1) {
            System.out.println(o);
        }
    }


}
