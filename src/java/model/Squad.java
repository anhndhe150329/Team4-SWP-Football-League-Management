/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Asus
 */
public class Squad {
    int squadId;;
    boolean isMatch;
    boolean isHome;
    int userId;
    int matchId;

    public Squad() {
    }

    public Squad(boolean isMatch, int userId) {
        this.isMatch = isMatch;
        this.userId = userId;
    }

    public Squad(boolean isMatch, boolean isHome, int matchId) {
        this.isMatch = isMatch;
        this.isHome = isHome;
        this.matchId = matchId;
    }
    

    public Squad(int squadId, boolean isMatch, boolean isHome, int userId, int matchId) {
        this.squadId = squadId;
        this.isMatch = isMatch;
        this.isHome = isHome;
        this.userId = userId;
        this.matchId = matchId;
    }

    public int getSquadId() {
        return squadId;
    }

    public void setSquadId(int squadId) {
        this.squadId = squadId;
    }

    public boolean isIsMatch() {
        return isMatch;
    }

    public void setIsMatch(boolean isMatch) {
        this.isMatch = isMatch;
    }

    public boolean isIsHome() {
        return isHome;
    }

    public void setIsHome(boolean isHome) {
        this.isHome = isHome;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getMatchId() {
        return matchId;
    }

    public void setMatchId(int matchId) {
        this.matchId = matchId;
    }
    
}
