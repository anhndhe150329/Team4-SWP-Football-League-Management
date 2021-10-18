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
import model.Match;
import model.MatchStat;
/**
 *
 * @author Asus
 */
public class MatchDao extends DBContext {
    public List<Match> getAllMatch() {
        List<Match> list = new ArrayList();
        String sql = "select*from [match]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Match m = new Match(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getDate(4), rs.getInt(5), rs.getInt(6), rs.getBoolean(7));
                list.add(m);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }
    public Match getMatch(int home, int away, Date date) { 
        String sql = "select*from [match] where home= ? and away= ? and date=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, home);
            ps.setInt(2, away);
            ps.setDate(3, date);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Match m = new Match(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getDate(4), rs.getInt(5), rs.getInt(6), rs.getBoolean(7));
                return m;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }
    public Match getMatchById(int matchId) {
        String sql = "select*from [match] where matchId=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, matchId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Match m = new Match(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getDate(4), rs.getInt(5), rs.getInt(6), rs.getBoolean(7));
                return m;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void addMatch(Match m) {
        String sql = "insert into [match](home,away,date,status) values(?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, m.getHome());
            ps.setInt(2, m.getAway());
            ps.setDate(3, m.getDate());
            ps.setBoolean(4, m.isStatus());
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteMatch(int id) {
        String sql = " delete [match] where matchId=? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public MatchStat getMatchStat(int matchId, boolean b) {
        String sql = "select*from MatchStat where matchId=? and isHome=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, matchId);
            ps.setBoolean(2, b);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                MatchStat m = new MatchStat(rs.getInt(1), rs.getBoolean(2), rs.getDouble(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getInt(7),rs.getInt(8));
                return m;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public static void main(String[] args) {
        MatchDao md = new MatchDao();
        System.out.println(md.getMatch(4, 3, Date.valueOf("2021-03-22")));
    }

    

    
}
