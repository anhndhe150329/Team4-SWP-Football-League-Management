/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.ClubDAO;
import dal.PlayerDAO;
import model.Position;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Club;
import model.Player;
import model.User;

/**
 *
 * @author ntpho
 */
public class ClubServlet extends HttpServlet {

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
        session.setAttribute("active", "club");
        String op = request.getParameter("op");
        ClubDAO cd = new ClubDAO();
       
        if (null != op) switch (op) {
            case "list":
                List<Club> clist = cd.getALL();
                request.setAttribute("clist", clist);
                request.getRequestDispatcher("listClub.jsp").forward(request, response);
              
                break;
            
            case "edit":{
                int id = Integer.parseInt(request.getParameter("id"));
                Club c = cd.getClubById(id);
                request.setAttribute("c", c);
                request.getRequestDispatcher("EditClub.jsp").forward(request, response);
                    break;
                }
            case "Update":{
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("clubName");
                String image = request.getParameter("image");
                String kit = request.getParameter("kit");
                String stadium = request.getParameter("stadium");
                Club c = new Club(id, name, image, kit, stadium);
                cd.updateClub(c);
            }
            case "detail":{
                int id = Integer.parseInt(request.getParameter("id"));
                Club c = cd.getClubById(id);
                
                PlayerDAO pd = new PlayerDAO();
                request.setAttribute("pd", pd);
                request.setAttribute("c", c);
                request.getRequestDispatcher("club.jsp").forward(request, response);
                    break;
                }
            case "add":{
                request.getRequestDispatcher("AddClub.jsp").forward(request, response);
                break;
            }
            case "Add":{
                String name = request.getParameter("clubName");
                String image = request.getParameter("image");
                String kit = request.getParameter("kit");
                String stadium = request.getParameter("stadium");
                Club c = new Club(name, image, kit, stadium);
                cd.addClub(c);
                User u = (User) session.getAttribute("acc");
                UserDAO ud = new UserDAO();
                ud.changeFavClub(u.getUserId(), cd.maxIndex());
                session.setAttribute("acc", ud.getById(u.getUserId()));
                request.getRequestDispatcher("home").forward(request, response);
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
