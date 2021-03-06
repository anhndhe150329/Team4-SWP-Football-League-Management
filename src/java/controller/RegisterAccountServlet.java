package controller;

import dal.SquadDAO;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Squad;
import model.User;

/**
 *
 * @author asus
 */
public class RegisterAccountServlet extends HttpServlet {

    private static final String EMAIL_VALID = "^[^\\s+\\!#$@]+@([^\\s+\\!#$@])+(\\.[^\\d\\s+\\!#$@]{2,4}){1,3}$";

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
            out.println("<title>Servlet AddAccountServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddAccountServlet at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("createAccount.jsp").forward(request, response);
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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        boolean g = gender.equals("1");      
        Date dob = null;
        try {
            dob = new java.sql.Date((new SimpleDateFormat("yyyy-dd-MM").parse(request.getParameter("dob"))).getTime());
        } catch (ParseException e) {

        }
        String email = request.getParameter("email");
        int role = Integer.parseInt(request.getParameter("role"));
        if (password.isEmpty() || !password.equals(repassword)) {
            request.setAttribute("fail", "M???t kh???u v?? Nh???p l???i m???t kh???u kh??ng kh???p nhau ho???c r???ng!!");
        } else if (!checkInputEmail(email)) {
            request.setAttribute("fail", "Email kh??ng h???p l???!!");

        } else if (name.isEmpty()) {
            request.setAttribute("fail", "Email kh??ng h???p l???!!");

        } else if (role == 2) {
            User u = new User();
            u.setUsername(username);
            u.setPassword(password);

            u.setName(name);
            u.setGender(g);
            u.setDob(dob);
            u.setEmail(email);
            u.setType(4);
            SquadDAO sd = new SquadDAO();
            int id = udao.signup(u);
            Squad s = new Squad(false, id);
            sd.addUserSquad(s);
            request.setAttribute("mess1", "Request success!!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        } else {
            User u = new User();
            u.setUsername(username);
            u.setPassword(password);
            u.setName(name);
            u.setGender(g);
            u.setDob(dob);
            u.setEmail(email);
            u.setType(role);
            SquadDAO sd = new SquadDAO();
            int id = udao.signup(u);
            Squad s = new Squad(false, id);
            sd.addUserSquad(s);
            request.setAttribute("mess", "T???o t??i kho???n th??nh c??ng!!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }
        request.getRequestDispatcher("usertype").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public boolean checkString(String txt) {
        if (txt == null || txt.isEmpty()) {
            return false;
        } else {
            return true;
        }
    }

    private boolean checkInputEmail(String txt) {

        if (txt.matches(EMAIL_VALID)) {
            return true;
        } else {
            return false;
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
