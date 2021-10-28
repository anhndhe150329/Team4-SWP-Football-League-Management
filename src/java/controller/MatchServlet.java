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
import model.Goal;
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
        SquadDAO sd = new SquadDAO();
        int matchId = Integer.parseInt(request.getParameter("matchId"));
        Match m = md.getMatchById(matchId);
        ClubDAO cd = new ClubDAO();
        request.setAttribute("m", m);
        if (null != op) {
            switch (op) {
                case "view": {
                    
                    MatchStat homeStat = md.getMatchStat(matchId, true);
                    MatchStat awayStat = md.getMatchStat(matchId, false);
                    List<MatchEvent> list = md.getMatchEvent(matchId);
                    request.setAttribute("list", list);
                    request.setAttribute("home", homeStat);
                    request.setAttribute("away", awayStat);
                    request.setAttribute("cd", cd);
                    request.getRequestDispatcher("matchstat.jsp").forward(request, response);
                    break;
                }
                case "addgoal": {
                    List<SquadInfo> list = sd.getSquadInfo(sd.getSquad(matchId, true).getSquadId(), 0);
                    list.addAll(sd.getSquadInfo(sd.getSquad(matchId, false).getSquadId(), 0));
                    request.setAttribute("list", list);
                    request.setAttribute("pd", new PlayerDAO());
                    request.getRequestDispatcher("goal.jsp").forward(request, response);
                    break;
                }
                case "AddGoal": {
                    int scorer = Integer.parseInt(request.getParameter("scorer"));
                    int assistant = Integer.parseInt(request.getParameter("assistant"));
                    int time = Integer.parseInt(request.getParameter("time"));
                    String og = request.getParameter("og");
                    Goal g = new Goal(scorer, assistant, matchId, time, "on".equals(og));
                    md.addGoal(g);
                    md.updateMatchResult(matchId);
                    request.getRequestDispatcher("match?op=view&matchId=" + matchId).forward(request, response);
                    break;
                }
                case "delgoal": {
                    int goalId = Integer.parseInt(request.getParameter("goalId"));
                    md.deleteGoal(goalId);
                    md.updateMatchResult(matchId);
                    request.getRequestDispatcher("match?op=view&matchId=" + matchId).forward(request, response);
                    break;
                }
                case "edit":{
                    MatchStat ms1=md.getMatchStat(matchId, true);
                    MatchStat ms2=md.getMatchStat(matchId, false);
                    request.setAttribute("cd", cd);
                    request.setAttribute("home", ms1);
                    request.setAttribute("away", ms2);
                    request.getRequestDispatcher("EditMatchStat.jsp").forward(request, response);
                    break;
                }
                case "Update":{
                    double hposs = Double.parseDouble(request.getParameter("hposs"));
                    double aposs = Double.parseDouble(request.getParameter("aposs"));
                    int hshot = Integer.parseInt(request.getParameter("hshot"));
                    int ashot = Integer.parseInt(request.getParameter("ashot"));
                    int hsot = Integer.parseInt(request.getParameter("hsot"));
                    int asot = Integer.parseInt(request.getParameter("asot"));
                    int hcorner = Integer.parseInt(request.getParameter("hcorners"));
                    int acorner = Integer.parseInt(request.getParameter("acorners"));
                    int hoffside = Integer.parseInt(request.getParameter("hoffside"));
                    int aoffside = Integer.parseInt(request.getParameter("aoffside"));
                    int hfoul = Integer.parseInt(request.getParameter("hfoul"));
                    int afoul = Integer.parseInt(request.getParameter("afoul"));
                    MatchStat ms1 = new MatchStat(matchId, true, hposs, hshot, hsot, hcorner, hoffside, hfoul);
                    MatchStat ms2 = new MatchStat(matchId, false, aposs, ashot, asot, acorner, aoffside, afoul);
                    md.updateMatchStat(ms1);
                    md.updateMatchStat(ms2);
                    request.getRequestDispatcher("match?op=view&matchId=" + matchId).forward(request, response);
                    break;
                }
                default:
                    break;
            }
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
