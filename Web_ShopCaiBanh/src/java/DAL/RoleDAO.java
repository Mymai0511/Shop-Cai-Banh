/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Role;
import java.util.List;
import java.sql.PreparedStatement;// lệnh có đối số
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class RoleDAO extends DBContext {

    //lấy tất cả dữ liệu từ bảng 
   
    public List<Role> getAll() {
        List<Role> list = new ArrayList<>();
        String sql = "select * from Roles";
        try {
            PreparedStatement st = connection.prepareStatement(sql);// kết nối với sql
            ResultSet rs = st.executeQuery();// trả về kết quả từ sql- nhiều bản ghi
            while(rs.next()){
                Role r = new Role();
                r.setId(rs.getInt("role_id"));
                r.setName(rs.getString("role_name"));
                list.add(r);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
//    //test có kết nối được với database không
//    public static void main(String[] args) {
//        RoleDAO c = new RoleDAO();
//        List<Role> list = c.getAll();
//        System.out.println(list.get(0));
//    }

}
