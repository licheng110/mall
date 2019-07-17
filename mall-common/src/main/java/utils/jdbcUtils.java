package utils;
import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;

public class jdbcUtils {
//    数据源只能被创建一次
private  static DataSource ds ;
static {
    ds = new ComboPooledDataSource();
}
//获取数据源
public static DataSource getDataSource (){
    return ds;
}

}

