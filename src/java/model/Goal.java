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
public class Goal {
   private int goalId;
   private int scorer;
   private int assistant;
   private int matchId;
   private int time;
   private boolean og;

    public Goal() {
    }

    public Goal(int scorer, int assistant, int matchId, int time, boolean og) {
        this.scorer = scorer;
        this.assistant = assistant;
        this.matchId = matchId;
        this.time = time;
        this.og = og;
    }


    public Goal(int goalId, int scorer, int assistant, int matchId, int time, boolean og) {
        this.goalId = goalId;
        this.scorer = scorer;
        this.assistant = assistant;
        this.matchId = matchId;
        this.time = time;
        this.og = og;
    }

    public int getGoalId() {
        return goalId;
    }

    public void setGoalId(int goalId) {
        this.goalId = goalId;
    }

    public int getScorer() {
        return scorer;
    }

    public void setScorer(int scorer) {
        this.scorer = scorer;
    }

    public int getAssistant() {
        return assistant;
    }

    public void setAssistant(int assistant) {
        this.assistant = assistant;
    }

    public int getMatchId() {
        return matchId;
    }

    public void setMatchId(int matchId) {
        this.matchId = matchId;
    }

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public boolean isOg() {
        return og;
    }

    public void setOg(boolean og) {
        this.og = og;
    }

    @Override
    public String toString() {
        return "Goal{" + "goalId=" + goalId + ", scorer=" + scorer + ", assistant=" + assistant + ", matchId=" + matchId + ", time=" + time + ", og=" + og + '}';
    }
    
    
}
