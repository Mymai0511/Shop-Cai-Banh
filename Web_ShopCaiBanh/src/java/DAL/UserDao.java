/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */
public class UserDao extends DBContext {

    public List<User> getAll() {
        List<User> list = new ArrayList<>();
        // lấy dữ liệu bảng product+ category
        String sql = "select * from users ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("user_id"));
                u.setName(rs.getString("user_name"));
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setAddress(rs.getString("address"));
                u.setGender(rs.getBoolean("gender"));
                u.setPhone(rs.getString("phone"));
                u.setIsSell(rs.getBoolean("isSell"));
                u.setIsAdmin(rs.getBoolean("isAdmin"));
                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public User loginByName(String nameString, String passString) {
        User userN = new User();
        // lấy dữ liệu bảng product+ category
        String sql = "select * from users\n"
                + "where user_name = ? and password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, nameString);
            st.setString(2, passString);
            ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("user_id"));
                u.setName(rs.getString("user_name"));
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setAddress(rs.getString("address"));
                u.setGender(rs.getBoolean("gender"));
                u.setPhone(rs.getString("phone"));
                u.setIsSell(rs.getBoolean("isSell"));
                u.setIsAdmin(rs.getBoolean("isAdmin"));
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public User checkUserExist(String nameString) {
        User userN = new User();
        String sql = "select * from users\n"
                + "where user_name = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, nameString);
            ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("user_id"));
                u.setName(rs.getString("user_name"));
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setAddress(rs.getString("address"));
                u.setGender(rs.getBoolean("gender"));
                u.setPhone(rs.getString("phone"));
                u.setIsSell(rs.getBoolean("isSell"));
                u.setIsAdmin(rs.getBoolean("isAdmin"));
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void sigup(String name, String pass) {
        User userN = new User();
        String sql = "INSERT INTO Users ( user_name, password, isAdmin, isSell) values (?, ?, 0, 0);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, name);
            st.setString(2, pass);
            st.executeUpdate();
            //ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //test có kết nối được với database không
    public static void main(String[] args) {
        UserDao p = new UserDao();
        User u = p.checkUserExist("maimy");
        List<User> list = p.getAll();

        System.out.println(list);
        System.out.println(u);
    }
}
