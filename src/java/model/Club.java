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
public class Club {
    private int clubId;
    private String clubName;
    private String image;
    private String kit;
    private String stadium;

    public Club() {
    }
    public Club( String clubName, String image, String kit, String stadium) {
        this.clubName = clubName;
        this.image = image;
        this.kit = kit;
        this.stadium = stadium;
    }
    public Club(int clubId, String clubName, String image, String kit, String stadium) {
        this.clubId = clubId;
        this.clubName = clubName;
        this.image = image;
        this.kit = kit;
        this.stadium = stadium;
    }

    public int getClubId() {
        return clubId;
    }

    public void setClubId(int clubId) {
        this.clubId = clubId;
    }

    public String getClubName() {
        return clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getKit() {
        return kit;
    }

    public void setKit(String kit) {
        this.kit = kit;
    }

    public String getStadium() {
        return stadium;
    }

    public void setStadium(String stadium) {
        this.stadium = stadium;
    }
    
}
