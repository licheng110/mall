package dao;

import com.mall.service.Address;
import com.mall.service.AddressDao;
import com.mall.service.User;
import utils.jdbcUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AddressDaoImpl implements AddressDao {
    @Override
    public void insertAddress(Address address) {
        Connection conn =null;
        String sql = "insert into customers_address(shouhuoren,phonenum,dizhi,youzhengnum) values (?,?,?,?)";
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        try {
            conn= jdbcUtil.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1, address.getShouhuoren());
            pps.setString(2, address.getPhonenum());
            pps.setString(3, address.getDizhi());
            pps.setInt(4, address.getYouzhengnum());
            pps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
//		释放资源
        }finally {
            jdbcUtil.releaseConnection(conn);
        }
    }

    @Override
    public void deleteAddressByshouhuoren(String shouhuoren) {
        Connection conn = null;
        String sql = "delete from customers_address where shouhuoren = ?";
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        try {
            conn=jdbcUtil.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1,shouhuoren);
            pps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
//		释放资源
        }finally {
            jdbcUtil.releaseConnection(conn);
        }
    }

    @Override
    public void updateAddress(Address address) {

    }

    @Override
    public User selectAddressByshouhuoewn(String shouhuoren) {
        return null;
    }

    @Override
    public List<Address> selectAll() {
        Connection conn=null;
        Statement stt= null;
        ResultSet res=null;
        List<Address> addressList =new ArrayList<>();
        try {
            String sql="select * from customers_address";
            conn = jdbcUtil.getConnection();
            stt = conn.prepareStatement(sql);
            res = stt.executeQuery(sql);
            while (res.next()) {
                Address address = new Address();
                address.setShouhuoren(res.getString("shouhuoren"));
                address.setPhonenum(res.getString("phonenum"));
                address.setDizhi(res.getString("dizhi"));
                address.setYouzhengnum(res.getInt("youzhengnum"));
                addressList.add(address);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            jdbcUtil.releaseConnection(conn);
        }
        return addressList;
    }

}
