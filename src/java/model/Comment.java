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
    int pid;
    Date date;
    String username;

    public Comment() {
    }

    public Comment(int id, String content, int uid, int pid, Date date, String username) {
        this.id = id;
        this.content = content;
        this.uid = uid;
        this.pid = pid;
        this.date = date;
        this.username = username;
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

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "Comment{" + "id=" + id + ", content=" + content + ", uid=" + uid + ", pid=" + pid + ", date=" + date + ", username=" + username + '}';
    }

 
}