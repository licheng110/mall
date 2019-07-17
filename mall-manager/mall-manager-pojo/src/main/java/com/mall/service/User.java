package com.mall.service;

public class User {
    private  String username;
    private String password;
    private String phone;
    private String truename;
    private String birthday;
    private String sex;
    private String dizhi;
    private String email;

    public User() {
    }

    public User(String username, String password, String phone, String truename, String birthday, String sex, String dizhi, String email) {
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.truename = truename;
        this.birthday = birthday;
        this.sex = sex;
        this.dizhi = dizhi;
        this.email = email;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getTruename() {
        return truename;
    }

    public void setTruename(String truename) {
        this.truename = truename;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getDizhi() {
        return dizhi;
    }

    public void setDizhi(String dizhi) {
        this.dizhi = dizhi;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
