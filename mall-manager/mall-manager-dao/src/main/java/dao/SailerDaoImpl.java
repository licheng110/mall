package dao;

import com.mall.service.Sailer;
import utils.jdbcUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class SailerDaoImpl implements SailerDao {
    @Override
    public void insertSailer(Sailer sailer) {
        Connection conn =null;
        String sql = "insert into mmall_sj_zc(sjname,sjpassword,frname,frage,frbirnum,sjphone,sjdz) values (?,?,?,?,?,?,?)";
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        try {
            conn= jdbcUtil.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1, sailer.getSjname());
            pps.setString(2, sailer.getSjpassword());
            pps.setString(3, sailer.getFrname());
            pps.setInt(4, sailer.getFrage());
            pps.setString(5, sailer.getFrbirnum());
            pps.setString(6, sailer.getSjphone());
            pps.setString(7, sailer.getSjdz());
            pps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
//		释放资源
        }finally {
            jdbcUtil.releaseConnection(conn);
        }
    }

    @Override
    public void deleteSailerBySjname(String sjname) {

    }

    @Override
    public void updateUser(Sailer sailer) {

    }

    @Override
    public Sailer selectBySjname(String sjname) {
        return null;
    }

    @Override
    public List<Sailer> selectAll() {
        return null;
    }
}
