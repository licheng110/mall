package com.mall.service.impl;

import com.mall.service.Cart;
import com.mall.service.ICartDao;
import com.mall.service.Order;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import utils.jdbcUtils;

import java.sql.SQLException;
import java.util.List;

public class CartDaoImpl implements ICartDao {
    @Override
    public List<Cart> getAll() throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDataSource());
        String sql = "select * from mmall_cart";
        List<Cart> cList = qr.query(sql,new BeanListHandler<>(Cart.class));
        return cList;
    }

    @Override
    public void deleteProduct(String productName) throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDataSource());
        String sql = "delete from mmall_cart where name=?";
        qr.execute(sql,productName);
    }

    @Override
    public void addProduct(String name, double price, int num, String shop, String address) throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDataSource());
        String sql = "insert into mmall_cart(name,price,num,shop,address) values(?,?,?,?,?)";
        qr.insert(sql,new BeanHandler<>(Cart.class),name,price,num,shop,address);
    }

    @Override
    public Cart getProductByName(String name) throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDataSource());
        String sql = "select * from mmall_cart where name=?";
        Cart cart = qr.query(sql,new BeanHandler<>(Cart.class),name);
        return cart;
    }

}
