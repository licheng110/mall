package com.mall.service;

public class Cart {
    private String name;
    private int num;
    private double price;
    private String shop;
    private String address;
    private String phone;
    private String order_num;
    private String receipt_man;
    private int post_encode;

    public Cart() {
    }

    public Cart(String name, int num, double price, String shop, String address, String phone, String order_num, String receipt_man, int post_encode) {
        this.name = name;
        this.num = num;
        this.price = price;
        this.shop = shop;
        this.address = address;
        this.phone = phone;
        this.order_num = order_num;
        this.receipt_man = receipt_man;
        this.post_encode = post_encode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getShop() {
        return shop;
    }

    public void setShop(String shop) {
        this.shop = shop;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getOrder_num() {
        return order_num;
    }

    public void setOrder_num(String order_num) {
        this.order_num = order_num;
    }

    public String getReceipt_man() {
        return receipt_man;
    }

    public void setReceipt_man(String receipt_man) {
        this.receipt_man = receipt_man;
    }

    public int getPost_encode() {
        return post_encode;
    }

    public void setPost_encode(int post_encode) {
        this.post_encode = post_encode;
    }
}
