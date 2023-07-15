/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Cart;
import Model.CartItem;
import Model.Order;
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
            //lay id cua order vua add
            String sql2 = " select top 1 order_id from [orders] order by order_id desc";
            PreparedStatement st2 = connection.prepareStatement(sql2);// kết nối với sql2
            ResultSet rs2 = st.executeQuery();// trả về kết quả từ sql2-
            //add bang OrderDetail
            if (rs2.next()) {
                int oid = rs2.getInt("order_id");
                for (CartItem item : cart.getItems()) {
                    String sql3 = "INSERT INTO [orderdetail] ( order_id, product_id, price, quantity) values (?, ?, ?, ?);";
                    PreparedStatement st3 = connection.prepareStatement(sql2);// kết nối với sql2
                    st3.setInt(1, oid);
                    st3.setInt(2, item.getProduct().getId());
                    st3.setDouble(3, item.getProduct().getPrice());
                    st3.setInt(4, item.getQuantity());
                    st3.executeUpdate();
                }
            }
            //Cap nhap lai so luong san pham
            String sql4 = "update product set stock=stock- ? where product_id = ?";
            PreparedStatement st4= connection.prepareStatement(sql4);
            for (CartItem i : cart.getItems()) {
                st4.setInt(1, i.getQuantity());
                st4.setInt(2, i.getProduct().getId());
                st4.executeUpdate();
            }
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        OrderDAO dao = new OrderDAO();
        List<Order> list = dao.getAll();
        for (Order o : list) {
            System.out.println(o);
        }
    }

//   public int insertOrder(Orders order) {
//        String sql = "INSERT INTO Orders VALUES(?,?,?,?,?)"; // (accountID, orderDate, address, totalPrice,
//                                                             // status)
//        try {
//            PreparedStatement ps = DbContext.getConnection().prepareStatement(sql);
//            ps.setInt(1, order.getAccountID());
//            ps.setDate(2, order.getOrderDate());
//            ps.setString(3, order.getAddress());
//            ps.setInt(4, order.getTotalPrice());
//            ps.setInt(5, order.getStatus());
//            ps.executeUpdate();
//            // i want return orderID
//            String sql2 = "SELECT MAX(orderID) AS orderID FROM Orders";
//            PreparedStatement ps2 = DbContext.getConnection().prepareStatement(sql2);
//            ResultSet rs = ps2.executeQuery();
//            if (rs.next()) {
//                return rs.getInt("orderID");
//            }
//        } catch (SQLException ex) {
//            System.out.println(ex);
//        }
//        return -1;
//    }
//
//    public List<Integer> getAllOrderIDByAccountID(int accountID) {
//        String sql = "SELECT orderID FROM Orders WHERE accountID = ?";
//        List<Integer> listOrderID = new ArrayList<>();
//        try {
//            PreparedStatement ps = DbContext.getConnection().prepareStatement(sql);
//            ps.setInt(1, accountID);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                listOrderID.add(rs.getInt("orderID"));
//            }
//        } catch (SQLException ex) {
//            System.out.println(ex);
//        }
//        return listOrderID;
//    }
//
//    public List<Orders> getListOrderByAccountID(int accountID) {
//        // get list order by accountID and order by orderDate ascending
//        String sql = "SELECT * FROM Orders WHERE accountID = ? ORDER BY orderDate DESC";
//        List<Orders> listOrder = new ArrayList<>();
//        try {
//            PreparedStatement ps = DbContext.getConnection().prepareStatement(sql);
//            ps.setInt(1, accountID);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Orders order = new Orders();
//                order.setOrderID(rs.getInt("orderID"));
//                order.setAccountID(rs.getInt("accountID"));
//                order.setOrderDate(rs.getDate("orderDate"));
//                order.setAddress(rs.getString("address"));
//                order.setTotalPrice(rs.getInt("totalPrice"));
//                order.setStatus(rs.getInt("status"));
//                listOrder.add(order);
//            }
//        } catch (SQLException ex) {
//            System.out.println(ex);
//        }
//        return listOrder;
//    }
}
