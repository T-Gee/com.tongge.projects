package com.tongge.lnsmessp.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.tongge.lnsmessp.dao.ServicesdetailsDAO;
import com.tongge.supportdb.JDBCUtils;
import com.tongge.supportdb.exception.JDBCUTilsException;

public class ServicesdetailsDAOImpl implements ServicesdetailsDAO {

    public int addObjects(String typeImg, String introduce, String business) {
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String isql = "insert into servicesdetails (imgpath,introduce,business) " + " values (?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(isql);
            pstmt.setString(1, typeImg);
            pstmt.setString(2, introduce);
            pstmt.setString(3, business);
            return pstmt.executeUpdate();
        } catch (JDBCUTilsException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JDBCUtils.close(conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return 0;
    }

}
