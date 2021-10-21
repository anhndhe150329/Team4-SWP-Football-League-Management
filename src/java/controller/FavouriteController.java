package controller;

import dal.FavouriteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
                request.setAttribute("change", f.like(u, pid));
              request.getRequestDispatcher("BlogController?action=list").forward(request, response);
                break;
            case "dislike":
                 FavouriteDAO f1 = new FavouriteDAO();
                int pid1 = Integer.parseInt(request.getParameter("pid"));
                f1.dislikeFavourite(pid1);
                request.setAttribute("change1", f1.dislikeFavourite(pid1));
                  response.sendRedirect("BlogController?action=list");


                break;
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
