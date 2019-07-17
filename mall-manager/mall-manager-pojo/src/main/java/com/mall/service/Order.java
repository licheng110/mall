package com.mall.service;

public class Order {
    private int id;
    private String name;
    private String order_no;
    private String shop;
    private double price;
    private String create_time;
    private String refund_reason;
    private String receipt_state;
    private String refund_state;
    private String pay_state;
    private String discuss_state;
    private String description;
    private String refund_amount;
    private String upload_picture;

    public Order() {
    }

    public Order(int id, String name, String order_no, String shop, double price, String create_time, String refund_reason, String receipt_state, String refund_state, String pay_state, String discuss_state, String description, String refund_amount, String upload_picture) {
        this.id = id;
        this.name = name;
        this.order_no = order_no;
        this.shop = shop;
        this.price = price;
        this.create_time = create_time;
        this.refund_reason = refund_reason;
        this.receipt_state = receipt_state;
        this.refund_state = refund_state;
        this.pay_state = pay_state;
        this.discuss_state = discuss_state;
        this.description = description;
        this.refund_amount = refund_amount;
        this.upload_picture = upload_picture;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOrder_no() {
        return order_no;
    }

    public void setOrder_no(String order_no) {
        this.order_no = order_no;
    }

    public String getShop() {
        return shop;
    }

    public void setShop(String shop) {
        this.shop = shop;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public String getRefund_reason() {
        return refund_reason;
    }

    public void setRefund_reason(String refund_reason) {
        this.refund_reason = refund_reason;
    }

    public String getReceipt_state() {
        return receipt_state;
    }

    public void setReceipt_state(String receipt_state) {
        this.receipt_state = receipt_state;
    }

    public String getRefund_state() {
        return refund_state;
    }

    public void setRefund_state(String refund_state) {
        this.refund_state = refund_state;
    }

    public String getPay_state() {
        return pay_state;
    }

    public void setPay_state(String pay_state) {
        this.pay_state = pay_state;
    }

    public String getDiscuss_state() {
        return discuss_state;
    }

    public void setDiscuss_state(String discuss_state) {
        this.discuss_state = discuss_state;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRefund_amount() {
        return refund_amount;
    }

    public void setRefund_amount(String refund_amount) {
        this.refund_amount = refund_amount;
    }

    public String getUpload_picture() {
        return upload_picture;
    }

    public void setUpload_picture(String upload_picture) {
        this.upload_picture = upload_picture;
    }
}
