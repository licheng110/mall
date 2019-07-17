package com.mall.service.impl;

import com.mall.service.IOrderDao;
import com.mall.service.Order;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import utils.jdbcUtils;

import java.sql.SQLException;
import java.util.List;

public class OrderDaoImpl implements IOrderDao {
    @Override
    public List<Order> getAllOrder() throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDataSource());
        String sql = "select * from mall_order";
        List<Order> oList = qr.query(sql,new BeanListHandler<>(Order.class));
        return oList;
    }

    @Override
    public Order getOrderByOrderNo(String orderNo) throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDataSource());
        String sql = "select * from mall_order where order_no=?";
        Order order = qr.query(sql,new BeanHandler<>(Order.class),orderNo);
        return order;
    }

    @Override
    public void submitRefundApply(String receiptState, String refundReason, String refundAmount,String orderNo) throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDataSource());
        String sql = "update mall_order set receipt_state=?,refund_reason=?,refund_amount=? where order_no=?";
        qr.update(sql,receiptState,refundReason,refundAmount,orderNo);
    }
}
