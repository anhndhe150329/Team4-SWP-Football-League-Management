package controller;

import dal.BlogDAO;
import dal.FavouriteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Blog;
import model.User;

/**
 *
 * @author asus
 */
public class FavouriteController extends HttpServlet {

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
       response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null ) {
            return;
        }
        switch (action) {
            case "likef":
                FavouriteDAO f = new FavouriteDAO();
                int pid = Integer.parseInt(request.getParameter("pid"));
                HttpSession session = request.getSession();
                User a = (User) session.getAttribute("acc");
                int u = a.getUserId();
                f.like(u, pid);
//                request.setAttribute("change",  f.like(u, pid));
              request.getRequestDispatcher("blog?action=list").forward(request, response);
                break;
            case "dislike":
                 FavouriteDAO f1 = new FavouriteDAO();
                int pid1 = Integer.parseInt(request.getParameter("pid"));
                 HttpSession session1 = request.getSession();
                User a1 = (User) session1.getAttribute("acc");
                int u1 = a1.getUserId();
               int r1= f1.dislikeFavourite(pid1,u1);
                request.setAttribute("change1", r1);
                  response.sendRedirect("blog?action=list");


                break;
                case  "listFav":
                   BlogDAO b= new BlogDAO();
                  
                   HttpSession session3 = request.getSession();
                    User a2 = (User) session3.getAttribute("acc");
                     int u3 = a2.getUserId();
                   
                    List<Blog>list= b.listFav(u3);
                     request.setAttribute("list", list);
                     request.getRequestDispatcher("ListFav.jsp").forward(request, response);
            default:
                return;
        }
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
