/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author admin
 */
public class TopScorer {
    private int goalno;
    private String playerName;
   private String  clubName;

    public TopScorer() {
    }

    public TopScorer(int goalno, String playerName, String clubName) {
        this.goalno = goalno;
        this.playerName = playerName;
        this.clubName = clubName;
    }

    public int getGoalno() {
        return goalno;
    }

    public void setGoalno(int goalno) {
        this.goalno = goalno;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public String getClubName() {
        return clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

    @Override
    public String toString() {
        return "TopScorer{" + "goalno=" + goalno + ", playerName=" + playerName + ", clubName=" + clubName + '}';
    }
    
    

}