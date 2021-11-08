package model;

import java.sql.Date;


/**
 *
 * @author asus
 */
public class User {
    private int userId;
    private String username,password;
    private String name;
    private  boolean  gender;
    private Date dob;
    private int favClub;
    private String email;
    private int type;

    public User() {
    }

    public User(String username, String password, String name, boolean gender, Date dob, String email, int type) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.dob = dob;
        this.email = email;
        this.type = type;
    }

    public User(int userId, String username, String password, String name, boolean gender, Date dob, int favClub, String email, int type) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.dob = dob;
        this.favClub = favClub;
        this.email = email;
        this.type = type;
    }
    

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public int getFavClub() {
        return favClub;
    }

    public void setFavClub(int favClub) {
        this.favClub = favClub;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
    
    
}
