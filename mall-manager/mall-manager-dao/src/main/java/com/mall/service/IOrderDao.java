package com.mall.service;

import java.sql.SQLException;
import java.util.List;

public interface IOrderDao {
    public List<Order> getAllOrder() throws SQLException;

    public Order getOrderByOrderNo(String orderNo) throws SQLException;

    public void submitRefundApply(String receiptState,String refundReason,String refundAmount,String orderNo) throws SQLException;
}
