/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ntpho
 */
public class Rank {
    private int clubId;
    private int app;
    private int W;
    private int D;
    private int L;
    private int GF;
    private int GA;
    private int GD;
    private int point;

    public Rank() {
    }

    public Rank(int clubId, int app, int W, int D, int L, int GF, int GA, int GD, int point) {
        this.clubId = clubId;
        this.app = app;
        this.W = W;
        this.D = D;
        this.L = L;
        this.GF = GF;
        this.GA = GA;
        this.GD = GD;
        this.point = point;
    }

    public int getClubId() {
        return clubId;
    }

    public void setClubId(int clubId) {
        this.clubId = clubId;
    }

    public int getApp() {
        return app;
    }

    public void setApp(int app) {
        this.app = app;
    }

    public int getW() {
        return W;
    }

    public void setW(int W) {
        this.W = W;
    }

    public int getD() {
        return D;
    }

    public void setD(int D) {
        this.D = D;
    }

    public int getL() {
        return L;
    }

    public void setL(int L) {
        this.L = L;
    }

    public int getGF() {
        return GF;
    }

    public void setGF(int GF) {
        this.GF = GF;
    }

    public int getGA() {
        return GA;
    }

    public void setGA(int GA) {
        this.GA = GA;
    }

    public int getGD() {
        return GD;
    }

    public void setGD(int GD) {
        this.GD = GD;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }
}
