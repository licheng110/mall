package dao;

import com.mall.service.User;
import utils.jdbcUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class PersonalInformationUserDaoImpl implements UserDao {


    @Override
    public void insertUser(User user) {
        Connection conn =null;
        String sql = "insert into mmall_user(truename,birthday,sex,email) values (?,?,?,?) where username='aa'";
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        try {
            conn= jdbcUtil.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1, user.getTruename());
            pps.setString(2, user.getBirthday());
            pps.setString(3, user.getSex());
            pps.setString(4, user.getEmail());
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

    }

    @Override
    public void updateUser(User user) {

    }

    @Override
    public void updateUserInfo(User user,String username) {
        Connection conn = null;
        String sql = "update mmall_user set truename=?,birthday=?,sex=?,email=? where username=?";
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        try {
            conn=jdbcUtil.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1, user.getTruename());
            pps.setString(2, user.getBirthday());
            pps.setString(3, user.getSex());
            pps.setString(4, user.getEmail());
            pps.setString(5, username);
            pps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
//		释放资源
        }finally {
            jdbcUtil.releaseConnection(conn);
        }

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
                user.setPhone(res.getString("phone"));
                user.setTruename(res.getString("truename"));
                user.setBirthday(res.getString("birthday"));
                user.setSex(res.getString("sex"));
                user.setEmail(res.getString("email"));
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
        return null;
    }
}
