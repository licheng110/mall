import com.mall.service.TrueSilaer;
import utils.jdbcUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TrueSailerDaoImpl implements TrueSailerDao{


    @Override
    public TrueSilaer selectBySjname(String sjname) {
        Connection conn = null;
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        ResultSet res =null;
        String sql = "select * from mmall_sj where sjname = ?";
        TrueSilaer trueSilaer = new TrueSilaer();
        try {
            conn = jdbcUtil.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1,sjname);
            res = pps.executeQuery();
            while (res.next()) {
                trueSilaer.setSjname(res.getString("sjname"));
                trueSilaer.setSjpassword(res.getString("sjpassword"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
//		释放资源
        }finally {
            jdbcUtil.releaseConnection(conn);
        }
        return trueSilaer;
    }
}
