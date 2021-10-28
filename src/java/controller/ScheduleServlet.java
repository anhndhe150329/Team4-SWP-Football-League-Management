/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.ClubDAO;
import dal.LeagueDAO;
import dal.MatchDao;
import dal.SquadDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Club;
import model.Match;
import model.Squad;

/**
 *
 * @author Asus
 */
public class ScheduleServlet extends HttpServlet {

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
        session.setAttribute("active", "schedule");
        String op = request.getParameter("op");
        ClubDAO cd = new ClubDAO();
        MatchDao md = new MatchDao();
        SquadDAO sd = new SquadDAO();
        
        if (op == null) {
            op = "";
        }
        switch (op) {
            case "add": {
                List<Club> clubs = cd.getALL();
                request.setAttribute("clubs", clubs);
                request.getRequestDispatcher("addmatch.jsp").forward(request, response);
                break;
            }
            case "Add": {
                int home = Integer.parseInt(request.getParameter("home"));
                int away = Integer.parseInt(request.getParameter("away"));
                Date date = Date.valueOf(request.getParameter("date"));
                Match m = new Match(home, away, date, false);
                md.addMatch(m);
                int matchId = md.getMatch(home, away, date).getMatchId();
                md.addMatchStat(matchId, true);
                md.addMatchStat(matchId, false);
                Squad s1 = new Squad(true, true, matchId);
                Squad s2 = new Squad(true, false, matchId);
                sd.addSquad(s1);
                sd.addSquad(s2);
                List<Match> list = md.getAllMatch();
                request.setAttribute("list", list);
                request.setAttribute("cd", cd);
                request.getRequestDispatcher("schedule.jsp").forward(request, response);
                break;
            }
            case "delete": {
                int id = Integer.parseInt(request.getParameter("id"));
                Squad s1 = sd.getSquad(id, true);
                if(s1!=null){
                    sd.deleteSquad(s1.getSquadId());
                }
                Squad s2 = sd.getSquad(id, false);
                if(s2!=null){
                    sd.deleteSquad(s2.getSquadId());
                }
                md.deleteMatchStat(id);
                md.deleteMatch(id);
                List<Match> list = md.getAllMatch();
                request.setAttribute("list", list);
                request.setAttribute("cd", cd);
                request.getRequestDispatcher("schedule.jsp").forward(request, response);
                break;
            }
            case "view": {
                List<Match> list = md.getAllMatch();
                request.setAttribute("list", list);
                request.setAttribute("cd", cd);
                request.getRequestDispatcher("schedule.jsp").forward(request, response);
                break;
            }
            case "edit":{
                int id = Integer.parseInt(request.getParameter("id"));
                Match m = md.getMatchById(id);
                request.setAttribute("match", m);
                request.setAttribute("cd", cd);
                request.getRequestDispatcher("EditMatch.jsp").forward(request, response);
                break;
            }
            case "Update":{
                int id = Integer.parseInt(request.getParameter("id"));
                Match m = md.getMatchById(id);
                m.setDate(Date.valueOf(request.getParameter("date")));
                String status = request.getParameter("status");
                m.setStatus("on".equals(status));
                md.updateMatch(m);
                request.getRequestDispatcher("schedule?op=view").forward(request, response);
                break;
            }
            default:
                break;
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
