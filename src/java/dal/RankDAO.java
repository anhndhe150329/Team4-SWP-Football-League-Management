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
import model.Player;
import model.Rank;
import model.Top;
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
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
 
     public List<Rank> getAllRank(){
         List<Rank> list = new ArrayList();
         String sql="  select * from RankTable r order by point desc, GD desc, (select c.clubName from club c where c.clubId= r.clubId) asc";
         try{
             PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Rank r = new Rank(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9));
                list.add(r);
            }
            return list;
         }catch(SQLException ex){
             System.out.println(ex);
         }
         return null;
     }
    public List<Top> getTopAssistant() {
        List<Top> list = new ArrayList();
        String sql = "   select assistant, count (* ) as Agoal from goal where assistant >0 \n"
                + "  group by assistant \n"
                + "  order by Agoal desc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Top g = new Top(rs.getInt(1), rs.getInt(2)
                       
                );

                list.add(g);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

     public static void main(String[] args) {
          RankDAO db = new RankDAO();

//        List<TopScorer> list = db.getTopScocer();
//        for(TopScorer t: list){
//            System.out.println(t);
//    }
//           List<Rank> list = db.getAllRank();
//           for(Rank r:list){
//               System.out.println(r.getPoint());
//               
//           }
           List<Top> list1 = db.getTopAssistant();
           for(Top t:list1){
               System.out.println(t);
           }
     } 
}
