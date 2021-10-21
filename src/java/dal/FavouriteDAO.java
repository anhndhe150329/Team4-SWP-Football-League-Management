package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Favourite;

/**
 *
 * @author asus
 */
public class FavouriteDAO extends DBContext {

    public int like(int uid, int pid) {
        
        String sql = "insert into favourite(uid,pid) values(?,?)";
       
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, uid);
            st.setInt(2, pid);
            st.executeUpdate();
            return 1;
            
        } catch (SQLException e) {
            System.out.println(e);
        }      
        return 0;

    }
    public int dislikeFavourite(int pid) {
        
        String sql = "delete from favourite where pid=?";
       
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            
            st.setInt(1, pid);
            st.executeUpdate();
            return 1;
            
        } catch (SQLException e) {
            System.out.println(e);
        }      
        return 0;

    }
    public static void main(String[] args) {
        System.out.println( new FavouriteDAO().like(1, 100));
    }
    
    
}
