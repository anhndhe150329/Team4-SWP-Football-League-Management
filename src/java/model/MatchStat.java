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
public class MatchStat {
    int matchId;
    boolean isHome;
    double possession;
    int shot;
    int sot;
    int corners;
    int offside;
    int foul;

    public MatchStat() {
    }

    public MatchStat(int matchId, boolean isHome, double possession, int shot, int sot, int corners, int offside, int foul) {
        this.matchId = matchId;
        this.isHome = isHome;
        this.possession = possession;
        this.shot = shot;
        this.sot = sot;
        this.corners = corners;
        this.offside = offside;
        this.foul = foul;
    }

    public int getMatchId() {
        return matchId;
    }

    public void setMatchId(int matchId) {
        this.matchId = matchId;
    }

    public boolean isIsHome() {
        return isHome;
    }

    public void setIsHome(boolean isHome) {
        this.isHome = isHome;
    }

    public double getPossession() {
        return possession;
    }

    public void setPossession(double possession) {
        this.possession = possession;
    }

    public int getShot() {
        return shot;
    }

    public void setShot(int shot) {
        this.shot = shot;
    }

    public int getSot() {
        return sot;
    }

    public void setSot(int sot) {
        this.sot = sot;
    }

    public int getCorners() {
        return corners;
    }

    public void setCorners(int corners) {
        this.corners = corners;
    }

 

    public int getOffside() {
        return offside;
    }

    public void setOffside(int offside) {
        this.offside = offside;
    }

    public int getFoul() {
        return foul;
    }

    public void setFoul(int foul) {
        this.foul = foul;
    }
    
    
}
