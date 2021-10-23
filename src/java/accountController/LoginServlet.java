package accountController;

import dal.UserDAO;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author asus
 */
public class LoginServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        request.getRequestDispatcher("login.jsp").forward(request, response);
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
        UserDAO udao = new UserDAO();
        String u = request.getParameter("username");
        if (u==null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            String p = request.getParameter("password");

            String r = request.getParameter("rem");
            User us = udao.login(u, p);
//        us.setType(2);
            //null -->return login page
            if (us == null) {
                request.setAttribute("err", "Wrong user or pass");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                //tao sessiion ,cookie
                HttpSession session = request.getSession();

                session.setAttribute("acc", us);

                //save username,password cookie
                Cookie cuser = new Cookie("user1", u);
                Cookie cpass = new Cookie("pass", p);
                Cookie cremember = new Cookie("rem", r);
                if (r != null) {
                    //user click remember me-->set time cookies
                    //co nho , 1 ngay
                    cuser.setMaxAge(60 * 60 * 24);
                    cpass.setMaxAge(60 * 60 * 24);
                    cremember.setMaxAge(60 * 60 * 24);
                } else {
                    //khong nho , nen xoa no di
                    cuser.setMaxAge(0);
                    cpass.setMaxAge(0);
                    cremember.setMaxAge(0);

                }
                response.addCookie(cuser);
                response.addCookie(cpass);
                response.addCookie(cremember);
                response.sendRedirect("home");
            }

        }

//        PrintWriter out = response.getWriter();
//        out.print(us);
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
