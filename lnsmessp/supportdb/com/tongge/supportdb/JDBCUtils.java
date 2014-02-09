package com.tongge.supportdb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.tongge.supportdb.exception.JDBCUTilsException;

public class JDBCUtils {

    public static String driver = "com.mysql.jdbc.Driver";
    public static String url = "jdbc:mysql://localhost:3306/lnsmessp";
    //?useUnicode=true&amp;characterEncoding=UTF-8
    public static String user = "root";
    public static String password = "root";
    public static int count = 40;

    public static Connection getConn() throws JDBCUTilsException {
        try {
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, user, password);
            return conn;
        } catch (Exception e) {
            throw new JDBCUTilsException(e);
        }

    }

    public static void close(Connection conn) throws SQLException {
        if (!conn.isClosed()) {
            conn.close();
        }
    }

    public static void main(String[] args) throws JDBCUTilsException {
        try {
            Connection conn = getConn();
            if (!conn.isClosed())
                System.out.println("Succeeded connecting to the Database!");
            // statement����ִ��SQL���
            Statement statement = conn.createStatement();
            // Ҫִ�е�SQL���
            String sql = "select * from user";
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
                System.out.println(rs.getString("username"));
            }
            close(conn);
        } catch (Exception e) {
            throw new JDBCUTilsException(e);
        }
    }
}
