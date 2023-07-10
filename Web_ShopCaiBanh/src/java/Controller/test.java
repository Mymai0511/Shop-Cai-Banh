/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import DAL.ProductDAO;
import Model.Product;

/**
 *
 * @author DELL
 */
public class test {

    public static void main(String[] args) {
        ProductDAO p = new ProductDAO();
        Product pLast = p.getLast();

        //phân trang
        int count = p.getTotalProductSearchByName("cake");
        int endPage = count / 6;
        if (count % 6 != 0) {// có dư thì cộng thêm 1 trang
            endPage++;
        }
        
        System.out.println(endPage);
    }
}
