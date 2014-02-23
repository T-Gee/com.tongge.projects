package com.tongge.lnsmessp.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tongge.lnsmessp.dao.CompnayServicesPrefDAO;
import com.tongge.supportdb.JDBCUtils;
import com.tongge.supportdb.exception.JDBCUTilsException;

public class CompnayServicesPrefDAOImpl implements CompnayServicesPrefDAO {

    public int save(String operator, String compnayId, String servicesId) {

        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String isql = "insert into compnay_services_pref (compnayId,servicesId,operator,lastupddate) values (?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(isql);
            pstmt.setString(1, compnayId);
            pstmt.setString(2, servicesId);
            pstmt.setString(3, operator);
            pstmt.setDate(4, new Date(System.currentTimeMillis()));
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

    public boolean isFP(String busicode) {

        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String isql = "select * from compnay_services_pref where compnayId = ?";
            PreparedStatement pstmt = conn.prepareStatement(isql);
            pstmt.setString(1, busicode);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                return true;
            }
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
        return false;
    }
    public int update(String operator, String compnayId, String servicesId) {

        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String isql = "update compnay_services_pref set servicesId =? ,operator = ? ,lastupddate = ?) where compnayId = ?";
            PreparedStatement pstmt = conn.prepareStatement(isql);
            pstmt.setString(1, servicesId);
            pstmt.setString(2, operator);
            pstmt.setDate(3, new Date(System.currentTimeMillis()));
            pstmt.setString(4, compnayId);
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
