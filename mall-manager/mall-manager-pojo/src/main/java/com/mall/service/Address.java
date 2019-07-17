package com.mall.service;

public class Address {
    private String shouhuoren;
    private String phonenum;
    private String dizhi;
    private int youzhengnum;

    public Address() {
    }

    public Address(String shouhuoren, String phonenum, String dizhi, int youzhengnum) {
        this.shouhuoren = shouhuoren;
        this.phonenum = phonenum;
        this.dizhi = dizhi;
        this.youzhengnum = youzhengnum;
    }

    public String getShouhuoren() {
        return shouhuoren;
    }

    public void setShouhuoren(String shouhuoren) {
        this.shouhuoren = shouhuoren;
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    public String getDizhi() {
        return dizhi;
    }

    public void setDizhi(String dizhi) {
        this.dizhi = dizhi;
    }

    public int getYouzhengnum() {
        return youzhengnum;
    }

    public void setYouzhengnum(int youzhengnum) {
        this.youzhengnum = youzhengnum;
    }

    @Override
    public String toString() {
        return "Address{" +
                "shouhuoren='" + shouhuoren + '\'' +
                ", phonenum='" + phonenum + '\'' +
                ", dizhi='" + dizhi + '\'' +
                ", youzhengnum=" + youzhengnum +
                '}';
    }
}
