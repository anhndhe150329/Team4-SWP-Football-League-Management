/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.ClubDAO;
import dal.LeagueDAO;
import dal.MatchDao;
import dal.PlayerDAO;
import dal.SquadDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Match;
import model.MatchEvent;
import model.MatchStat;
import model.Squad;
import model.SquadInfo;
import model.User;

/**
 *
 * @author Asus
 */
public class MatchServlet extends HttpServlet {

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
        String op = request.getParameter("op");
        MatchDao md = new MatchDao();
        if("view".equals(op)){
            ClubDAO cd = new ClubDAO();
            int matchId = Integer.parseInt(request.getParameter("matchId"));
            MatchStat homeStat = md.getMatchStat(matchId, true);
            MatchStat awayStat = md.getMatchStat(matchId, false);
            Match m = md.getMatchById(matchId);
            List<MatchEvent> list = md.getMatchEvent(matchId);
            request.setAttribute("list",list);
            request.setAttribute("home", homeStat);
            request.setAttribute("away", awayStat);
            request.setAttribute("m", m);
            request.setAttribute("cd", cd);
            request.getRequestDispatcher("matchstat.jsp").forward(request, response);
        }
        if("add".equals(op)){
            
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
