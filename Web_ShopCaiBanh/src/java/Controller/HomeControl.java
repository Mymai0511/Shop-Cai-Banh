/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAL.CategoryDAO;
import DAL.ProductDAO;
import Model.Category;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
//URL: home
public class HomeControl extends HttpServlet {

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
        //load data
        String txtSearch = request.getParameter("textSearch");// lấy đc text ng dùng nhập vào để tìm kiếm
        String cateID = request.getParameter("cid");
        String indexPaging = request.getParameter("index");

        CategoryDAO c = new CategoryDAO();// gọi CategoryDAO
        List<Category> listCategorys = c.getAll();
        request.setAttribute("listC", listCategorys);// đẩy list thành listC lên trang jsp

        ProductDAO p = new ProductDAO();
        Product pLast = p.getLast();
        request.setAttribute("p", pLast);

        // phân trang
        if (indexPaging == null) {
            indexPaging = "1";
        }
        int index = Integer.parseInt(indexPaging);

        int count = 0;
        int endPage = 0;
        List<Product> listP = new ArrayList<Product>();

        if (cateID == null) {
            if (txtSearch == null) {
                count = p.getTotalProduct();///39
                endPage = count / 6;
                if (count % 6 != 0) {// có dư thì cộng thêm 1 trang
                    endPage++;
                }

                listP = p.pagingProduct6(index);
            } else {
                count = p.getTotalProductSearchByName(txtSearch);///39
                endPage = count / 6;
                if (count % 6 != 0) {// có dư thì cộng thêm 1 trang
                    endPage++;
                }

                listP = p.searchByName(txtSearch, index);
            }

        } else {
            if (txtSearch == null) {
                count = c.getTotalProductByCID(cateID);///39
                endPage = count / 6;
                if (count % 6 != 0) {// có dư thì cộng thêm 1 trang
                    endPage++;
                }

                listP = c.pagingProductByCID(cateID, index);
            } else {
                count = p.getTotalProductSearchByName(txtSearch);///39
                endPage = count / 6;
                if (count % 6 != 0) {// có dư thì cộng thêm 1 trang
                    endPage++;
                }

                listP = p.searchByName(txtSearch, index);
            }
        }
        request.setAttribute("endP", endPage);
        request.setAttribute("listP", listP);
        request.setAttribute("tagP", index);
        request.setAttribute("tagC", cateID);
        request.setAttribute("txtS", txtSearch);
        request.getRequestDispatcher("home.jsp").forward(request, response);

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
