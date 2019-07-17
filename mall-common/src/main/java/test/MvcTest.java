package test;

import utils.jdbcUtils;

import java.sql.SQLException;

public class MvcTest {

    public static void main(String[] args) throws SQLException {

        System.out.println(jdbcUtils.getDataSource().getConnection());
    }
}
