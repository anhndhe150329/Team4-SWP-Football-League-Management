/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 *
 * @author Asus
 */
public class Player {
    private int playerId;
    private String playerName;
    private Date dob;
    private int pos;
    private int number;
    private String country;
    private String image;
    private int clubId;

    public Player() {
    }

    public Player(String playerName, Date dob, int pos, int number, String country, String image, int clubId) {
        this.playerName = playerName;
        this.dob = dob;
        this.pos = pos;
        this.number = number;
        this.country = country;
        this.image = image;
        this.clubId = clubId;
    }
    
    public Player(int playerId, String playerName, Date dob, int pos, int number, String country, String image, int clubId) {
        this.playerId = playerId;
        this.playerName = playerName;
        this.dob = dob;
        this.pos = pos;
        this.number = number;
        this.country = country;
        this.image = image;
        this.clubId = clubId;
    }

    

    public int getPlayerId() {
        return playerId;
    }

    public void setPlayerId(int playerId) {
        this.playerId = playerId;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public int getPos() {
        return pos;
    }

    public void setPos(int pos) {
        this.pos = pos;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getClubId() {
        return clubId;
    }

    public void setClubId(int clubId) {
        this.clubId = clubId;
    }

    @Override
    public String toString() {
        return "Player{" + "playerId=" + playerId + ", playerName=" + playerName + ", dob=" + dob + ", pos=" + pos + ", number=" + number + ", country=" + country + ", image=" + image + ", clubId=" + clubId + '}';
    }

   
    
}
