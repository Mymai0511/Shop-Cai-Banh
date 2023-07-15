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
        String txt = "120:1.120:1.120:1.119:1.122:1.119:1.121:1.119:1.119:1";
        if (txt != null && txt.length() != 0) {
            String[] array = txt.split("\\.");
            // Print each element in the array
        for (String element : array) {
            System.out.println(element);
        }
        


        }
    }
}
