package dao;

import com.mall.service.User;
import utils.jdbcUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao {
    @Override
    public void insertUser(User user) {
        Connection conn =null;
        String sql = "insert into mmall_user(username,password,phone) values (?,?,?)";
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        try {
            conn= jdbcUtil.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1, user.getUsername());
            pps.setString(2, user.getPassword());
            pps.setString(3, user.getPhone());
            pps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
//		释放资源
        }finally {
            jdbcUtil.releaseConnection(conn);
        }
    }

    @Override
    public void deleteUserByUsername(String username) {
        Connection conn = null;
        String sql = "delete from mmall_user where username=?";
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        try {
            conn= jdbcUtil.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1,username);
            pps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
//		释放资源
        }finally {
            jdbcUtil.releaseConnection(conn);
        }
    }

    @Override
    public void updateUser(User user) {
        Connection conn = null;
        String sql = "update mmall_user set password = ? where username=?";
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        try {
            conn= jdbcUtil.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1, user.getPassword());
            pps.setString(2, user.getUsername());
            pps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
//		释放资源
        }finally {
            jdbcUtil.releaseConnection(conn);
        }
    }

    @Override
    public void updateUserInfo(User user, String username) {

    }

    @Override
    public User selectByUsername(String username) {
        Connection conn = null;
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        ResultSet res =null;
        String sql = "select * from mmall_user where username = ?";
        User user = new User();
        try {
            conn = jdbcUtil.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1,username);
            res = pps.executeQuery();
            while (res.next()) {
                user.setUsername(res.getString("username"));
                user.setPassword(res.getString("password"));
                user.setPhone(res.getString("phone"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
//		释放资源
        }finally {
            jdbcUtil.releaseConnection(conn);
        }
        return user;
    }

    @Override
    public List<User> selectAll() {
        Connection conn=null;
        Statement stt= null;
        ResultSet res=null;
        List<User> userList =new ArrayList<>();
        try {
            String sql="select * from mmall_user";
            conn = jdbcUtil.getConnection();
            stt = conn.prepareStatement(sql);
            res = stt.executeQuery(sql);
            while (res.next()) {
                User user = new User();
                user.setUsername(res.getString("username"));
                user.setPassword(res.getString("password"));
                user.setPhone(res.getString("phone"));
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            jdbcUtil.releaseConnection(conn);
        }
        return userList;
    }
}
