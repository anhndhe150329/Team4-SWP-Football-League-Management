package model;

/**
 *
 * @author asus
 */
public class Favourite {
     private int uid,pid;

    public Favourite() {
    }

    public Favourite(int uid, int pid) {
        this.uid = uid;
        this.pid = pid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }
     
}
