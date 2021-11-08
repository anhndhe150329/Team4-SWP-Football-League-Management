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
import model.Goal;


/**
 *
 * @author Asus
 */
public class LeagueDAO extends DBContext {
    public List<Goal> getAllAssistant() {
        List<Goal> list = new ArrayList();
        String sql = "select * from goal";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
               Goal g = new Goal(rs.getInt(1), rs.getInt(2),
                        rs.getInt(3), rs.getInt(4), rs.getInt(5),rs.getBoolean(6)
                        );
                list.add(g);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    public List<Goal> getTopAssistant() {
        List<Goal> list = new ArrayList();
        String sql = "    select * from goal where assistant>0  order by matchId, assistant ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Goal g = new Goal(rs.getInt(1), rs.getInt(2),
                        rs.getInt(3), rs.getInt(4), rs.getInt(5),rs.getBoolean(6)
                        );
                list.add(g);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    public static void main(String[] args) {
        LeagueDAO lea = new LeagueDAO();
        List<Goal> goalass = lea.getTopAssistant();
        for (Goal goalas : goalass) {
            System.out.println(goalas); 
        }
    }
}
