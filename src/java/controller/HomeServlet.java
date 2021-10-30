/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.BlogDAO;
import dal.ClubDAO;
import dal.MatchDao;
import dal.PlayerDAO;
import dal.RankDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Club;
import model.Rank;
import model.Top;
import model.TopScorer;
import model.User;
import model.Video;

/**
 *
 * @author ntpho
 */
public class HomeServlet extends HttpServlet {

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
        session.setAttribute("active", "home");
        List<TopScorer> listTopScorer = new RankDAO().getTopScocer();
        request.setAttribute("listTopScorer", listTopScorer);
        int id=0;
        if(session.getAttribute("acc")!=null){
            id= ((User) session.getAttribute("acc")).getFavClub();
        }
        MatchDao md = new MatchDao();
        request.setAttribute("NextMatch", md.getNextMatch(id));
        
        ClubDAO cd = new ClubDAO();
        request.setAttribute("cd", cd);
        
        RankDAO rd = new RankDAO();
        List<Top> listAs = rd.getTopAssistant();
        List<Rank> listRClub = rd.getAllRank();
        request.setAttribute("listC", listRClub);
        request.setAttribute("listAs", listAs);
        
        PlayerDAO pd = new PlayerDAO();
        request.setAttribute("pd", pd);
        
        BlogDAO bdao = new BlogDAO();
        List<Video> vlist = bdao.allVideo();
        request.setAttribute("vlist", vlist);
        request.getRequestDispatcher("index.jsp").forward(request, response);
        
        
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
