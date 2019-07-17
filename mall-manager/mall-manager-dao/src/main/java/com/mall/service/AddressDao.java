package com.mall.service;

import java.util.List;

public interface AddressDao {
    //    添加数据
    public void insertAddress(Address address);
    //    根据id 删除数据
    public void deleteAddressByshouhuoren(String shouhuoren);
    //    修改数据
    public void updateAddress(Address address);
    //    根据id 查询数据
    public User selectAddressByshouhuoewn(String shouhuoren);
    //    查询emp中的所有数据
    public List<Address> selectAll();
}
