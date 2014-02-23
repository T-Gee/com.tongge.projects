package com.tongge.lnsmessp.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tongge.lnsmessp.dao.CompnaydetailsDAO;
import com.tongge.lnsmessp.entities.CompnaydetailEntity;
import com.tongge.supportdb.JDBCUtils;
import com.tongge.supportdb.exception.JDBCUTilsException;

public class CompnaydetailsDAOImpl implements CompnaydetailsDAO {

    public int addObjects(String typeImg, String introduce, String business) {
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String isql = "insert into compnaydetails (imgpath,introduce,business) " + " values (?,?,?)";
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

    public List<CompnaydetailEntity> infoList() {
        List<CompnaydetailEntity> result = new ArrayList<CompnaydetailEntity>();
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String ssql = "select * from  compnaydetails where 1 = 1 ";
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

    private CompnaydetailEntity getEntity(ResultSet rs) throws SQLException {
        CompnaydetailEntity entity = new CompnaydetailEntity();
        entity.setId(rs.getInt("id"));
        entity.setImgpath(rs.getString("imgpath"));
        entity.setIntroduce(rs.getString("introduce"));
        entity.setBusiness(rs.getString("business"));
        return entity;

    }

    public int fp(String compnayId, String servicesId) {
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String isql = "update busiapply set proccess = '已分配' where busicode = '" + compnayId + "'";
            PreparedStatement pstmt = conn.prepareStatement(isql);
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
