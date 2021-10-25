/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Player;
import model.TopScorer;

/**
 *
 * @author admin
 */
public class RankDAO extends DBContext{
     public List<TopScorer> getTopScocer() {
        List<TopScorer> list = new ArrayList();
        String sql = "select top(5) goal.scorer,player.playerName, player.pos, player.country from player join goal on player.playerId = goal.assistant\n" +
"order by goal.scorer desc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                TopScorer t = new TopScorer(rs.getInt(1), rs.getString(2),
                        rs.getInt(3), rs.getString(4));
                list.add(t);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
     public static void main(String[] args) {
          RankDAO db = new RankDAO();
        List<TopScorer> list = db.getTopScocer();
        for(TopScorer t: list){
            System.out.println(t);
    }
    
     }

  
}
