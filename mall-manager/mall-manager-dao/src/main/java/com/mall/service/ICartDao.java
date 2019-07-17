package com.mall.service;

import java.sql.SQLException;
import java.util.List;

public interface ICartDao {
    public List<Cart> getAll() throws SQLException;

    public void deleteProduct(String productName) throws SQLException;

    public void addProduct(String name,double price,int num,String shop,String address) throws SQLException;

    public Cart getProductByName(String name) throws SQLException;
}
