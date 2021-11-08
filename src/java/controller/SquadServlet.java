/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.PlayerDAO;
import dal.SquadDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Squad;
import model.SquadInfo;
import model.User;

/**
 *
 * @author Asus
 */
public class SquadServlet extends HttpServlet {

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
        String smid = request.getParameter("mId");
        String sisHome = request.getParameter("isHome");
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("acc");
        SquadDAO sd = new SquadDAO();
        if (op == null) {
            op = "";
        }
        switch (op) {
            case "edit": {
                int matchId = 0;
                boolean isHome = true;
                Squad s = new Squad();
                if (smid != null && !smid.equals("")) {
                    matchId = Integer.parseInt(smid);
                    isHome = Boolean.valueOf(sisHome);
                    s = sd.getSbyMId(matchId, isHome);
                    request.setAttribute("mId", matchId);
                    request.setAttribute("isHome", isHome);
                } else {
                    s = sd.getSbyUserId(u.getUserId());
                }
                request.setAttribute("sId", s.getSquadId());
                PlayerDAO pd = new PlayerDAO();
                request.setAttribute("pd", pd);
                request.setAttribute("sd", sd);
                request.getRequestDispatcher("SquadInfo.jsp").forward(request, response);
                break;
            }
            case "add": {
                int sId = Integer.parseInt(request.getParameter("sId"));
                int posNo = Integer.parseInt(request.getParameter("posNo"));
                boolean check = false;
                if (!smid.equals("")) {
                    check = true;
                    int matchId = Integer.parseInt(smid);
                    boolean isHome = Boolean.valueOf(sisHome);
                    request.setAttribute("mId", matchId);
                    request.setAttribute("isHome", isHome);
                }
                request.setAttribute("check", check);
                request.setAttribute("op", op);
                request.setAttribute("posNo", posNo);
                request.setAttribute("sId", sId);
                PlayerDAO pd = new PlayerDAO();
                request.setAttribute("pd", pd);
                request.getRequestDispatcher("EditSquadInfo.jsp").forward(request, response);
                break;
            }
            case "Add": {
                int sId = Integer.parseInt(request.getParameter("sId"));
                int pId = Integer.parseInt(request.getParameter("playerId"));
                int posNo = Integer.parseInt(request.getParameter("posNo"));
                SquadInfo si = new SquadInfo(pId, sId, posNo);
                sd.addSquadInfo(si);
                request.getRequestDispatcher("squad?op=edit&mId=" + smid + "&isHome=" + sisHome).forward(request, response);
                break;
            }
            case "delete": {
                int sId = Integer.parseInt(request.getParameter("sId"));
                int posNo = Integer.parseInt(request.getParameter("posNo"));
                sd.deleteSquadInfo(sd.getOneSquadInfo(sId, posNo).getSquadInfoId());
                request.getRequestDispatcher("squad?op=edit&mId=" + smid + "&isHome=" + sisHome).forward(request, response);
                break;
            }
            case "change": {
                int sId = Integer.parseInt(request.getParameter("sId"));
                int posNo = Integer.parseInt(request.getParameter("posNo"));
                if (!smid.equals("")) {
                    int matchId = Integer.parseInt(smid);
                    boolean isHome = Boolean.valueOf(sisHome);
                    request.setAttribute("mId", matchId);
                    request.setAttribute("isHome", isHome);
                }
                request.setAttribute("op", op);
                request.setAttribute("posNo", posNo);
                request.setAttribute("sId", sId);
                PlayerDAO pd = new PlayerDAO();
                request.setAttribute("pd", pd);
                request.getRequestDispatcher("EditSquadInfo.jsp").forward(request, response);
                break;
            }
            case "Change": {
                int sId = Integer.parseInt(request.getParameter("sId"));
                int pId = Integer.parseInt(request.getParameter("playerId"));
                int posNo = Integer.parseInt(request.getParameter("posNo"));
                SquadInfo si = new SquadInfo(pId, sId, posNo);
                sd.UpdateSquadInfo(si);
                request.getRequestDispatcher("squad?op=edit&mId=" + smid + "&isHome=" + sisHome).forward(request, response);
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
