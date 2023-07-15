/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAL.ProductDAO;
import Model.Cart;
import Model.CartItem;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class ProcessItemControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductDAO dao = new ProductDAO();
        List<Product> listP = dao.getAll();
        Cookie[] arr = request.getCookies();
        String txt = "";
        if (arr != null) {
            for (Cookie o : arr) { // lấy ra cookie có tên là cart rồi cộng thêm sản phẩm mới vào
                if (o.getName().equals("cart")) {
                    txt += o.getValue();
                    o.setMaxAge(0);//xóa cookie o đi
                    response.addCookie(o);
                    break;
                }
            }
        }
        Cart cart = new Cart(txt, listP);
        String num_raw = request.getParameter("num");
        String id_raw = request.getParameter("id");
        int id, num = 0;
        try {
            id = Integer.parseInt(id_raw);
            num = Integer.parseInt(num_raw);
            Product p = dao.getProductByID(id_raw);
            String stock = p.getStock();
            int numStore = Integer.parseInt(stock);
            if (num == -1 && (cart.getQuantityByID(id) <= 1)) {
                cart.removeItem(id);
            } else {
                //kiểm tra xem còn đủ hàng ko
                if (num == 1 && cart.getQuantityByID(id) >= numStore) {
                    num = 0;
                }
                double price = p.getPrice() * 2;
                CartItem t = new CartItem(p, num, price);
                cart.addItem(t);
            }
        } catch (Exception e) {

        }
        List<CartItem> items = cart.getItems();
        txt = "";
        //giỏ hàng ko rỗng
        if (items.size() > 0) {
            txt = items.get(0).getProduct().getId() +":"+
                    items.get(0).getQuantity();
            for (int i = 1; i < items.size(); i++) {
                txt += "." + items.get(i).getProduct().getId() + ":"
                        + items.get(i).getQuantity();
            }
        }
        //tạo cookie "cart"
        Cookie c = new Cookie("cart", txt);
        c.setMaxAge(2 * 24 * 60 * 60);// thời gian  ngày
        response.addCookie(c);//thêm cookie
//        request.setAttribute("cart", cart);
//        request.getRequestDispatcher("cart.jsp").forward(request, response);
        response.sendRedirect("show");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
