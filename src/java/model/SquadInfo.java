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
public class SquadInfo {

    int squadInfoId;
    int playerId;
    int squadId;
    int posNo;

    public SquadInfo() {
    }

    public SquadInfo(int playerId, int squadId, int posNo) {
        this.playerId = playerId;
        this.squadId = squadId;
        this.posNo = posNo;
    }

    public SquadInfo(int squadInfoId, int playerId, int squadId, int posNo) {
        this.squadInfoId = squadInfoId;
        this.playerId = playerId;
        this.squadId = squadId;
        this.posNo = posNo;
    }
    

    public int getSquadInfoId() {
        return squadInfoId;
    }

    public void setSquadInfoId(int squadInfoId) {
        this.squadInfoId = squadInfoId;
    }

    public int getPlayerId() {
        return playerId;
    }

    public void setPlayerId(int playerId) {
        this.playerId = playerId;
    }

    public int getPosNo() {
        return posNo;
    }

    public void setPosNo(int posNo) {
        this.posNo = posNo;
    }

    public int getSquadId() {
        return squadId;
    }

    public void setSquadId(int squadId) {
        this.squadId = squadId;
    }

}
