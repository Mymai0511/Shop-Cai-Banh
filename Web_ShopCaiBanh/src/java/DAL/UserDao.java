/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Role;
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
        String sql = "select * from Roles right join users on Roles.role_id = Users.role_id";
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
                u.setRole(new Role(rs.getInt("role_id"), rs.getString("role_name")));
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
        String sql = "select * from Roles right join users on Roles.role_id = Users.role_id\n" +
                    "where user_name = ? and password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            st.setString(1, nameString);
            st.setString(2,passString);
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
                u.setRole(new Role(rs.getInt(1), rs.getString("role_name")));
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
        //test có kết nối được với database không
    public static void main(String[] args) {
        UserDao p = new UserDao();
        User u = p.loginByName("mai my", "12345");
        List<User> list = p.getAll();
        System.out.println(list);
        System.out.println(u);
    } 
}
