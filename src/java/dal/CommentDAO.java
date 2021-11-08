/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Comment;

import model.Match;

/**
 *
 * @author admin
 */
public class CommentDAO extends  DBContext{
     public List<Comment> getAllComment() {
        List<Comment> list = new ArrayList();
        String sql = "select cmtId, content,Comment.userId,id_post, date, [user].username from Comment join  [user] on Comment.userId = [user].userId";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Comment c = new Comment(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getDate(5), rs.getString(6));
               
                list.add(c);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }
      public  List<Comment>  getCommentByMatchId(int pid){
       List<Comment> list = new ArrayList();
          String sql = "select cmtId, content,Comment.userId,id_post, date, [user].username from Comment join  [user] on Comment.userId = [user].userId\n" +
"where id_post =?";
           try {
            PreparedStatement ps = connection.prepareStatement(sql);
           ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Comment c = new Comment(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getDate(5), rs.getString(6));
               
                list.add(c);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
}
      
      public void   insertComment(String content, int userId,int id_post){
       String sql ="insert into Comment(content, userId,id_post,date) values(?,?,?,getdate())";
           try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, content);
            ps.setInt(2,userId );
           ps.setInt(3, id_post);
           
          
            ps.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println(e);
        }
      }
     
  
     
      public static void main(String[] args) {
          CommentDAO db = new CommentDAO();
         //  db.insertComment("helllojkdjdk", 6,6);
          System.out.println(db.getCommentByMatchId(6));
    
}}
