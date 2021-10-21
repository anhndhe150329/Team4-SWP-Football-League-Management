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
public class MatchEvent {
    int goalId;
    String playerName;
    int time;
    boolean isGoal;
    int clubId;
    boolean og;

    public MatchEvent() {
    }
    
    public MatchEvent(int goalId,String playerName, int time, boolean isGoal, int clubId, boolean og) {
        this.goalId=goalId;
        this.playerName = playerName;
        this.time = time;
        this.isGoal = isGoal;
        this.clubId = clubId;
        this.og = og;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public boolean isIsGoal() {
        return isGoal;
    }

    public void setIsGoal(boolean isGoal) {
        this.isGoal = isGoal;
    }

    public int getClubId() {
        return clubId;
    }

    public void setClubId(int clubId) {
        this.clubId = clubId;
    }

    public boolean isOg() {
        return og;
    }

    public void setOg(boolean og) {
        this.og = og;
    }

    public int getGoalId() {
        return goalId;
    }

    public void setGoalId(int goalId) {
        this.goalId = goalId;
    }
    
}
