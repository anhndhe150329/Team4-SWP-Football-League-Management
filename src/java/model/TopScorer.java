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
    private int scorer;
    private String playerName;
    private int pos;
    private String  country;

    public TopScorer() {
    }

    public TopScorer(int scorer, String playerName, int pos, String country) {
        this.scorer = scorer;
        this.playerName = playerName;
        this.pos = pos;
        this.country = country;
    }

    public int getScorer() {
        return scorer;
    }

    public void setScorer(int scorer) {
        this.scorer = scorer;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public int getPos() {
        return pos;
    }

    public void setPos(int pos) {
        this.pos = pos;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Override
    public String toString() {
        return "TopScorer{" + "scorer=" + scorer + ", playerName=" + playerName + ", pos=" + pos + ", country=" + country + '}';
    }
    
    
}
