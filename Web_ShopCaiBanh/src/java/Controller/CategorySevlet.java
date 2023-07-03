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
import java.util.List;
import javax.security.auth.message.callback.PrivateKeyCallback;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class CategorySevlet extends HttpServlet {

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
        String cateID = request.getParameter("cid");
        // đã lấy đc category id về
        PrintWriter print = response.getWriter();
        print.println(cateID);
        
        ProductDAO pDAO = new ProductDAO();
//        List<Product> listCID = pDAO.getProductByCID(cateID);
        Product pLast = pDAO.getLast();

        CategoryDAO c = new CategoryDAO();// gọi CategoryDAO
        List<Category> listCategorys = c.getAll();
        
        //phân trang
        int count = c.getTotalProductByCID(cateID) ;
        int endPage = count / 6;
        if (count % 6 != 0) {// có dư thì cộng thêm 1 trang
            endPage++;
        }
        request.setAttribute("endP", endPage);
        
        //lấy sản phẩm đã phân trang
        String indexPaging = request.getParameter("index");
        if (indexPaging == null) {
            indexPaging = "1";
        }
        int index = Integer.parseInt(indexPaging);
        List<Product> listPaging = c.pagingProductByCID(cateID, index);
        request.setAttribute("listP", listPaging);

        //đánh dấu trang đang hiển thị
        request.setAttribute("tagP", index);        
        

        request.setAttribute("listC", listCategorys);// đẩy list thành listC lên trang jsp
        request.setAttribute("tagC", cateID);
        request.setAttribute("p", pLast);
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

//    public static void main(String[] args) {
//        CategorySevlet ca = new CategorySevlet();
//        
//        for (Product o : listCID) {
//            System.out.println(o);
//        }
//    }
}
