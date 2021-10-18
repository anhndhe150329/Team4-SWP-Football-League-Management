package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Club;

/**
 *
 * @author asus
 */
public class ClubDAO extends DBContext {

    // show list club
    public List<Club> getALL() {
        List<Club> list = new ArrayList();
        String sql = "select*from club";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Club c = new Club(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                list.add(c);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }
    public void addClub(Club c){
        String sql = "insert into Club(clubName,image,kit,stadium) values(?,?,?,?)";
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, c.getClubName());
            ps.setString(2, c.getImage());
            ps.setString(3, c.getKit());
            ps.setString(4, c.getStadium());
            ResultSet rs = ps.executeQuery();
        }catch (SQLException e){
            System.out.println(e);
        }
    }
    public int maxIndex(){
        String sql = "select top 1 clubId from club order by clubId desc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return rs.getInt("clubId");
            }
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
    public int updateClub(Club c) {
        // cap nhat list
        String sql = "update club set clubName =?,"
                + " image =?,kit=?, stadium =?  where clubId = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, c.getClubName());
            st.setString(2, c.getImage());
            st.setString(3, c.getKit());
            st.setString(4, c.getStadium());
            st.setInt(5, c.getClubId());
            return st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
    
    public Club getClubById(int id) {
        String sql = "select*from club where clubId=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Club c = new Club(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

   
}
