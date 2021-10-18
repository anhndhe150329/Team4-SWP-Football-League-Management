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

    public void like(int uid, int pid) {
        
        String sql = "insert into favourite(uid,pid) values(?,?)";
       
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, uid);
            st.setInt(2, pid);
            st.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println(e);
        }      

    }
    
}
