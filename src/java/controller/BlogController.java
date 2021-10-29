package controller;

import dal.BlogDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Blog;
import model.Video;

/**
 *
 * @author asus
 */
@WebServlet(name = "BlogController", urlPatterns = {"/blog"})
public class BlogController extends HttpServlet {

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
        HttpSession session = request.getSession();
        session.setAttribute("active", "blog");
        BlogDAO bdao = new BlogDAO();
        String action = request.getParameter("action");
        if (action == null || action.equals("")) {
            return;
        }
        switch (action) {
            case "list":
                List<Blog> list = bdao.allBlog();
//        PrintWriter out=response.getWriter();
//        out.print(list);
                List<Blog> listR = bdao.allrecentBlog();
                request.setAttribute("all", list);
                request.setAttribute("allRecent", listR);
                request.getRequestDispatcher("blog.jsp").forward(request, response);
                break;
            case "add":
                String title = request.getParameter("title");
                String image = request.getParameter("image");
                String content = request.getParameter("content");
                bdao.insertBlog(title, content, image);
                response.sendRedirect("blog?action=list");
                break;
            case "delete":
                int pid = Integer.parseInt(request.getParameter("pid"));
                bdao.deleteBlog(pid);
                response.sendRedirect("blog?action=list");
                break;

            case "detail":
                int post_id = Integer.parseInt(request.getParameter("pid"));
                //get post by post id
                Blog pBlog = bdao.blogByPostID(post_id);
                request.setAttribute("list", pBlog);
                request.getRequestDispatcher("blog-details.jsp").forward(request, response);
                break;
            case "update":
                String t = request.getParameter("title");
                String c = request.getParameter("content");
                String i = request.getParameter("img");
                int id = Integer.parseInt(request.getParameter("id"));

                bdao.updateBlog(t, c, i, id);
                response.sendRedirect("blog?action=list");

                break;

        }

//        request.getRequestDispatcher("index.jsp").forward(request, response);
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
        BlogDAO bdao = new BlogDAO();
        String action = request.getParameter("action");
        if (action == null || action.equals("")) {
            return;
        }
        switch (action) {
            case "list":
                List<Blog> list = bdao.allBlog();
//        PrintWriter out=response.getWriter();
//        out.print(list);
                List<Blog> listR = bdao.allrecentBlog();
                request.setAttribute("all", list);
                request.setAttribute("allRecent", listR);
                request.getRequestDispatcher("blog.jsp").forward(request, response);
                break;
            case "add":
                String title = request.getParameter("title");
                String image = request.getParameter("image");
                String content = request.getParameter("content");
                bdao.insertBlog(title, content, image);
                request.getRequestDispatcher("blog?action=list").forward(request, response);
                break;
            case "delete":
                break;
            case "detail":
                int post_id = Integer.parseInt(request.getParameter("pid"));
                //get post by post id

                request.setAttribute("list", bdao.blogByPostID(post_id));
                request.getRequestDispatcher("blog-details.jsp").forward(request, response);
                break;
                case "update":
                String t = request.getParameter("title");
                String c = request.getParameter("content");
                String i = request.getParameter("img");
                int id = Integer.parseInt(request.getParameter("id"));

                bdao.updateBlog(t, c, i, id);
                response.sendRedirect("blog?action=list");

                break;

        }

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
