/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.ClubDAO;
import dal.PlayerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Player;
import model.User;

/**
 *
 * @author Asus
 */
public class PlayerServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        String op = request.getParameter("op");
        PlayerDAO pd = new PlayerDAO();
        if ("list".equals(op)) {
            int club = 0;
            int pos = 0;
            String sclub = request.getParameter("club");
            String spos = request.getParameter("pos");
            if (sclub != null) {
                club = Integer.parseInt(sclub);
            }
            if (spos != null) {
                pos = Integer.parseInt(spos);
            }
            ClubDAO cd = new ClubDAO();
            request.setAttribute("cd", cd);
            request.setAttribute("pd", pd);
            request.setAttribute("club", club);
            request.setAttribute("pos", pos);
            request.getRequestDispatcher("ListPlayer.jsp").forward(request, response);
        } else if ("add".equals(op)) {
            request.setAttribute("poss", pd.getAllPos());
            request.getRequestDispatcher("AddPlayer.jsp").forward(request, response);
        } else if ("Add".equals(op)) {
            String name = request.getParameter("name");
            Date dob = Date.valueOf(request.getParameter("dob"));
            int pos = Integer.parseInt(request.getParameter("pos"));
            int num = Integer.parseInt(request.getParameter("number"));
            String country = request.getParameter("country");
            String image = request.getParameter("image");
            int id = Integer.parseInt(request.getParameter("clubId"));
            Player p = new Player(name, dob, pos, num, country, image, id);
            pd.addPlayer(p);
            request.getRequestDispatcher("club?op=detail&id=" + id).forward(request, response);
        } else if ("delete".equals(op)) {
            User u = (User) session.getAttribute("acc");
            int id = u.getFavClub();
            int pid = Integer.parseInt(request.getParameter("id"));
            pd.deletePlayer(pid);
            request.getRequestDispatcher("club?op=detail&id=" + id).forward(request, response);
        } else if ("edit".equals(op)) {
            int pid = Integer.parseInt(request.getParameter("id"));
            request.setAttribute("p", pd.getPlayerbyId(pid));
            request.setAttribute("pd", pd);
            request.getRequestDispatcher("EditPlayer.jsp").forward(request, response);
        } else if ("Update".equals(op)) {
            int id = Integer.parseInt(request.getParameter("id"));            
            String name = request.getParameter("name");
            Date dob = Date.valueOf(request.getParameter("dob"));
            int pos = Integer.parseInt(request.getParameter("pos"));
            int num = Integer.parseInt(request.getParameter("number"));
            String country = request.getParameter("country");
            String image = request.getParameter("image");
            int clubId = Integer.parseInt(request.getParameter("clubId"));
            Player p = new Player(id, name, dob, pos, num, country, image, clubId);
            pd.updatePlayer(p);
            request.getRequestDispatcher("club?op=detail&id=" + clubId).forward(request, response);
        }
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
