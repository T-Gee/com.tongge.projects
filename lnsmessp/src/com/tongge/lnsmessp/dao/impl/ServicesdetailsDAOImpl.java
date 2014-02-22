package com.tongge.lnsmessp.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tongge.lnsmessp.dao.ServicesdetailsDAO;
import com.tongge.lnsmessp.entities.ServicesdetailEntity;
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

    public List<ServicesdetailEntity> infoList() {
        List<ServicesdetailEntity> result = new ArrayList<ServicesdetailEntity>();
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String ssql = "select * from  servicesdetails where 1 = 1 ";
            PreparedStatement pstmt = conn.prepareStatement(ssql);
            // pstmt.setString(1, typeImg);
            // pstmt.setString(2, introduce);
            // pstmt.setString(3, business);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                result.add(getEntity(rs));
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
        return result;

    }

    private ServicesdetailEntity getEntity(ResultSet rs) throws SQLException {
        ServicesdetailEntity entity = new ServicesdetailEntity();
        entity.setId(rs.getInt("id"));
        entity.setImgpath(rs.getString("imgpath"));
        entity.setIntroduce(rs.getString("introduce"));
        entity.setBusiness(rs.getString("business"));
        return entity;

    }

}
