package com.mall.service;

public class Sailer {
    private String sjname;
    private String sjpassword;
    private String frname;
    private int frage;
    private String frbirnum;
    private String sjphone;
    private String sjdz;

    public Sailer() {
    }

    public Sailer(String sjname, String sjpassword, String frname, int frage, String frbirnum, String sjphone, String sjdz) {
        this.sjname = sjname;
        this.sjpassword = sjpassword;
        this.frname = frname;
        this.frage = frage;
        this.frbirnum = frbirnum;
        this.sjphone = sjphone;
        this.sjdz = sjdz;
    }

    public String getSjname() {
        return sjname;
    }

    public void setSjname(String sjname) {
        this.sjname = sjname;
    }

    public String getSjpassword() {
        return sjpassword;
    }

    public void setSjpassword(String sjpassword) {
        this.sjpassword = sjpassword;
    }

    public String getFrname() {
        return frname;
    }

    public void setFrname(String frname) {
        this.frname = frname;
    }

    public int getFrage() {
        return frage;
    }

    public void setFrage(int frage) {
        this.frage = frage;
    }

    public String getFrbirnum() {
        return frbirnum;
    }

    public void setFrbirnum(String frbirnum) {
        this.frbirnum = frbirnum;
    }

    public String getSjphone() {
        return sjphone;
    }

    public void setSjphone(String sjphone) {
        this.sjphone = sjphone;
    }

    public String getSjdz() {
        return sjdz;
    }

    public void setSjdz(String sjdz) {
        this.sjdz = sjdz;
    }

    @Override
    public String toString() {
        return "Sailer{" +
                "sjname='" + sjname + '\'' +
                ", sjpassword='" + sjpassword + '\'' +
                ", frname='" + frname + '\'' +
                ", frage=" + frage +
                ", frbirnum='" + frbirnum + '\'' +
                ", sjphone='" + sjphone + '\'' +
                ", sjdz='" + sjdz + '\'' +
                '}';
    }
}
