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
import model.Squad;
import model.SquadInfo;

/**
 *
 * @author Asus
 */
public class SquadDAO extends DBContext {

    public Squad getSquadById(int id) {
        String sql = "select*from squad where squadId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Squad s = new Squad(rs.getInt(1), rs.getBoolean(2), rs.getBoolean(3), rs.getInt(4), rs.getInt(5));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Squad getSbyMId(int matchId, boolean isHome) {
        String sql = "select*from squad where matchId = ? and isHome = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, matchId);
            ps.setBoolean(2, isHome);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Squad s = new Squad(rs.getInt(1), rs.getBoolean(2), rs.getBoolean(3), rs.getInt(4), rs.getInt(5));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Squad getSbyUserId(int userId) {
        String sql = "select*from squad where userId=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Squad s = new Squad(rs.getInt(1), rs.getBoolean(2), rs.getBoolean(3), rs.getInt(4), rs.getInt(5));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<SquadInfo> getSquadInfo(int sId, int type) {
        List<SquadInfo> list = new ArrayList();
        String s = "";
        if (type == 1) {
            s = "and posNo <12";
        } else if (type == 2) {
            s = "and posNo = 12";
        }
        String sql = "select*from SquadInfo where squadId = ? " + s;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, sId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SquadInfo si = new SquadInfo(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4));
                list.add(si);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public SquadInfo getOneSquadInfo(int sId, int posNo) {
        String sql = "select*from SquadInfo where squadId = ? and posNo = ?";
        try {
            if (posNo < 12) {
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setInt(1, sId);
                ps.setInt(2, posNo);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    SquadInfo si = new SquadInfo(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4));
                    return si;
                }
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void addSquadInfo(SquadInfo si) {
        String sql = "insert into SquadInfo(playerId,squadId,posNo) values(?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, si.getPlayerId());
            ps.setInt(2, si.getSquadId());
            ps.setInt(3, si.getPosNo());
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void UpdateSquadInfo(SquadInfo si) {
        String sql = "Update SquadInfo set playerId= ? where squadId= ? and posNo= ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, si.getPlayerId());
            ps.setInt(2, si.getSquadId());
            ps.setInt(3, si.getPosNo());
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteSquadInfo(int id) {
        String sql = "delete SquadInfo where squadInfoId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Squad getSquad(int mId, boolean isHome) {
        String sql = "select*from Squad where matchId = ? and isHome = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, mId);
            ps.setBoolean(2, isHome);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Squad s = new Squad(rs.getInt(1), rs.getBoolean(2), rs.getBoolean(3), rs.getInt(4), rs.getInt(5));
                return s;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void addSquad(Squad s) {
        String sql = "insert into Squad(isMatch,isHome,matchId) values(?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setBoolean(1, s.isIsMatch());
            ps.setBoolean(2, s.isIsHome());
            ps.setInt(3, s.getMatchId());
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
     public void addUserSquad(Squad s) {
        String sql = "insert into Squad(isMatch,userId) values(?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setBoolean(1, s.isIsMatch());
            ps.setInt(2, s.getUserId());
            ps.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteSquad(int id) {
        String sql = "delete Squad where squadId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        SquadDAO sd = new SquadDAO();
        Squad s = new Squad(false, 24);
        sd.addUserSquad(s);
        System.out.println(s.getMatchId());
    }

}
