/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Player;
import model.Position;


/**
 *
 * @author atung
 */
public class PlayerDAO extends DBContext {

    
    
    //list player
    public List<Player> getAllPlayer() {
        List<Player> list = new ArrayList();
        String sql = "select * from player";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Player p = new Player(rs.getInt(1), rs.getString(2),
                        rs.getDate(3), rs.getInt(4), rs.getInt(5),
                        rs.getString(6), rs.getString(7), rs.getInt(8));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public Player getPlayerbyId(int playerId) {
//        List<Player> list = new ArrayList<>();
        String sql = "select * from player where playerId=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, playerId);

            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                Player p = new Player(rs.getInt(1), rs.getString(2),
                        rs.getDate(3), rs.getInt(4), rs.getInt(5),
                        rs.getString(6), rs.getString(7), rs.getInt(8));
                return p;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Player> getPlayerbyclubId(int clubId) {
        List<Player> list = new ArrayList<>();
        String sql = "select * from player where clubId=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, clubId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Player p = new Player(rs.getInt(1), rs.getString(2),
                        rs.getDate(3), rs.getInt(4), rs.getInt(5),
                        rs.getString(6), rs.getString(7), rs.getInt(8));
                list.add(p);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Player> SearchPlayer(int clubId, int pos, String name) {
        List<Player> list = new ArrayList<>();
        String s="where playerName like '%" +name +"%' ";
        if(clubId!=0){
            s+="and clubId="+clubId;
        }
        if(pos!=0){
            s+="and pos="+pos;
        }
        String sql = "select * from player "+s;
        System.out.println(sql);
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Player p = new Player(rs.getInt(1), rs.getString(2),
                        rs.getDate(3), rs.getInt(4), rs.getInt(5),
                        rs.getString(6), rs.getString(7), rs.getInt(8));
                list.add(p);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public void addPlayer(Player p){
        String sql = "insert into Player(playerName,dob,pos,number,country,image,clubId) values(?,?,?,?,?,?,?)";
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, p.getPlayerName());
            ps.setDate(2, p.getDob());
            ps.setInt(3, p.getPos());
            ps.setInt(4, p.getNumber());
            ps.setString(5, p.getCountry());
            ps.setString(6, p.getImage());
            ps.setInt(7, p.getClubId());
            ps.executeQuery();
        }catch (SQLException e){
            System.out.println(e);
        }
    }
    public int updatePlayer(Player p) {

        String sql = "update player set playerName = ?, "
                + "dob =?,"
                + " pos=?, "
                + "number= ?, "
                + "country = ?, "
                + "image = ?, "
                + "clubId =? "
                + "where playerId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getPlayerName());
            st.setDate(2, p.getDob());
            st.setInt(3, p.getPos());
            st.setInt(4, p.getNumber());
            st.setString(5, p.getCountry());
            st.setString(6, p.getImage());
            st.setInt(7, p.getClubId());
            st.setInt(8, p.getPlayerId());

            return st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

        return 0;
    }
    public int deletePlayer(int id) {

        String sql = "delete player where playerId=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            return st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

        return 0;
    }
    
    public List<Position> getAllPos() {
        List<Position> list = new ArrayList();
        String sql = "select * from position";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Position p = new Position(rs.getInt(1), rs.getString(2));
                list.add(p);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public Position getPos(int id) {
        String sql = "select * from position where posId=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Position p = new Position(rs.getInt(1), rs.getString(2));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

 
    public static void main(String[] args) {
//        PlayerDAO db = new PlayerDAO();
//        List<Player> list = db.getPbyClubPos(0, 0,"a");
//        for(Player p : list){
//            System.out.println(p.getPlayerId());
//        }
    }
}
