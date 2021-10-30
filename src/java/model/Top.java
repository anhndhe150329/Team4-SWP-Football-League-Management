/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author atung
 */
public class Top {
    private int id;
    private int countG;

    public Top() {
    }

    public Top(int id, int countG) {
        this.id = id;
        this.countG = countG;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCountG() {
        return countG;
    }

    public void setCountG(int countG) {
        this.countG = countG;
    }

    @Override
    public String toString() {
        return "Top{" + "id=" + id + ", countG=" + countG + '}';
    }
    
    
}
