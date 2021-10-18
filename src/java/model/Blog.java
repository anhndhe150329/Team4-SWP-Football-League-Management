package model;

import java.sql.Date;

/**
 *
 * @author asus
 */
public class Blog {

    private int id_post;
    private String title;
    private int idu;
    private String content;
    private String image;
    private Date date;

    public Blog() {
    }

    public Blog(int id_post, String title, int idu, String content, String image, Date date) {
        this.id_post = id_post;
        this.title = title;
        this.idu = idu;
        this.content = content;
        this.image = image;
        this.date = date;
    }

    public int getId_post() {
        return id_post;
    }

    public void setId_post(int id_post) {
        this.id_post = id_post;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getIdu() {
        return idu;
    }

    public void setIdu(int idu) {
        this.idu = idu;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
}
