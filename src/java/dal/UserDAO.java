package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.User;
import model.UserType;

/**
 *
 * @author asus
 */
public class UserDAO extends DBContext {

    public User login(String username, String password) {
        String sql = "select*from [user] where username=? and password=? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getBoolean(5),
                        rs.getDate(6), rs.getInt(7), rs.getString(8), rs.getInt(9));
                return u;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }

    public boolean checkAcc(String username) {
        String sql = "select * from [user] where  username='" + username + "'";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    // load user type
    public List<UserType> loadAll() {
        String sql = "select*from userType";
        List<UserType> list = new ArrayList();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                UserType u = new UserType(rs.getInt(1), rs.getString(2));
                list.add(u);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }

    public int signup(User user) {
        String sql = "insert into [user](username,[password],[name],gender,dob,email,[type])\n"
                + "OUTPUT inserted.userId\n"
                + "values(?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getName());
            ps.setBoolean(4, user.isGender());
            ps.setDate(5, user.getDob());
            ps.setString(6, user.getEmail());
            ps.setInt(7, user.getType());

            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                return rs.getInt("userId");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public User getById(int id) {
        String sql = "select*from [user] where userId=? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getBoolean(5),
                        rs.getDate(6), rs.getInt(7), rs.getString(8), rs.getInt(9));
                return u;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }

    public void changeFavClub(int userId, int clubId) {
        String sql = "Update [user] set favClub=? where userId=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, clubId);
            ps.setInt(2, userId);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public User findByUsername(String name, String email) {
        String sql = "select*from [user] where name=? and email=? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getBoolean(5),
                        rs.getDate(6), rs.getInt(7), rs.getString(8), rs.getInt(9));
                return u;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }

    public void changePass(String password, int userId) {
        String query = " update [user] set password = ? where userId = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, password);
            st.setInt(2, userId);
            st.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<User> getAll() {
        String sql = "select * from [user] where type=4";
        List<User> list = new ArrayList();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getBoolean(5),
                        rs.getDate(6), rs.getInt(7), rs.getString(8), rs.getInt(9));
                list.add(u);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }

    public void AcceptManager(int id) {
        String sql = "update [user] set type= 2 where userId=?";
        try {

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void RejectManager(int id) {
        String sql = "update [user] set type= 3 where userId=?";
        try {

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    
    public void updateUser(User u){
       String sql = "update [user] set name =?, gender = ?, dob=?,email=? where userId =? ";
        try {

            PreparedStatement ps = connection.prepareStatement(sql);
            
            ps.setString(1, u.getName());
            ps.setBoolean(2, u.isGender());
            ps.setDate(3, u.getDob());
            ps.setString(4, u.getEmail());
            ps.setInt(5, u.getUserId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        
        UserDAO ud = new UserDAO();
        User u = new User(2, "Manchester United Manager1", true, Date.valueOf("2021-08-11"), "manutd1@gmail.com");
        ud.updateUser(u);
        
    }
}
