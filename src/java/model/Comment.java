package model;

import java.sql.Date;

/**
 *
 * @author asus
 */
public class Comment {
    int id;
    String content;
    int uid;
    int matchid;
    Date date;
    int pid;

    public Comment() {
    }

    public Comment(int id, String content, int uid, int matchid, Date date, int pid) {
        this.id = id;
        this.content = content;
        this.uid = uid;
        this.matchid = matchid;
        this.date = date;
        this.pid = pid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getMatchid() {
        return matchid;
    }

    public void setMatchid(int matchid) {
        this.matchid = matchid;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }
    
    
}
