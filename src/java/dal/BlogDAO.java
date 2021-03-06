package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Blog;
import model.Favourite;
import model.Video;

/**
 *
 * @author asus
 */
public class BlogDAO extends DBContext {

    public List<Blog> allBlog() {
        String sql = "select* from blog";
        List<Blog> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog(rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getString(4), rs.getString(5), rs.getDate(6));
                list.add(b);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }

    public Blog blogByPostID(int pid) {
        String sql = "select* from blog where id_post=?";
        
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, pid);
           ResultSet rs=ps.executeQuery();
           if(rs.next()){
               Blog b= new Blog(rs.getInt(1), rs.getString(2), rs.getInt(3), 
                       rs.getString(4), rs.getString(5), rs.getDate(6));
               return b;
           }
        }catch(Exception e){
            
        }
        return null;
    }

     public List<Video> allVideo() {
        String sql = "select* from Video";
        List<Video> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Video v = new Video(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5));
                list.add(v);
            }
            return list;

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;


    }

    public List<Blog> allrecentBlog() {
        String sql = "select top 3\n"
                + "*from Blog \n"
                + "order by id_post desc";
        List<Blog> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog(rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getString(4), rs.getString(5), rs.getDate(6));
                list.add(b);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }
    public void updateBlog(String title,String content,String img,int idp){
        String sql="update blog  set title=?,content=?,image=? where id_post=?";
         try {
            PreparedStatement ps = connection.prepareStatement(sql);
            
            ps.setString(1, title);
            ps.setString(2, content);
            ps.setString(3, img);
            ps.setInt(4, idp);
           
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public void insertBlog(String title, String content, String img) {
        String sql = "insert into blog values(?,1,?,?,getdate())";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            
            ps.setString(1, title);
            ps.setString(2, content);
            ps.setString(3, img);

           
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }
    public void deleteBlog(int idpost){
        String sql="delete from blog where id_post=?";
        try {
            PreparedStatement ps= connection.prepareStatement(sql);
            ps.setInt(1, idpost);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public List<Blog> listFav(int idu) {
        String sql = "select b.id_post, b.title,b.idu,b.content,b.[image],b.date \n" +
"from blog as b inner join favourite \n" +
"on b.id_post=favourite .pid where uid=?";
        List<Blog> list = new ArrayList<>();
       
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, idu);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
               
                Blog b = new Blog( rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getString(4), rs.getString(5), rs.getDate(6));
               
                list.add(b);
              
                
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }
    
    public static void main(String[] args) {

       BlogDAO b= new BlogDAO();
       List<Blog> list=b.listFav(20);
        System.out.println(list);

    }
}
