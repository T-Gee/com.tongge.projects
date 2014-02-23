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

    public int addObjects(String typeImg, String introduce, String business,String serviceid) {
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String isql = "insert into servicesdetails (imgpath,introduce,business,serviceid) values (?,?,?,?)";
            System.out.println(isql);
            PreparedStatement pstmt = conn.prepareStatement(isql);
            pstmt.setString(1, typeImg);
            pstmt.setString(2, introduce);
            pstmt.setString(3, business);
            pstmt.setString(4, serviceid);
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
            System.out.println(ssql);
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
        entity.setServiceid(rs.getString("serviceid"));
        return entity;

    }

    @Override
    public ServicesdetailEntity queryEntity() {
        // TODO Auto-generated method stub
        return null;
    }

    public int updObjects(int id, String imgpath, String introduce, String business) {
        List<ServicesdetailEntity> result = new ArrayList<ServicesdetailEntity>();
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String usql = "update servicesdetails set imgpath = ?,introduce =?,business=?  where id = ? ";
            PreparedStatement pstmt = conn.prepareStatement(usql);
            pstmt.setString(1, imgpath);
            pstmt.setString(2, introduce);
            pstmt.setString(3, business);
            pstmt.setInt(4, id);
            System.out.println(usql);
            return  pstmt.executeUpdate();
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

    @Override
    public ServicesdetailEntity queryByID(String id) {
        ServicesdetailEntity result = null;
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String ssql = "select * from  servicesdetails where serviceid = ?";
            PreparedStatement pstmt = conn.prepareStatement(ssql);
             pstmt.setString(1, id);
            // pstmt.setString(2, introduce);
            // pstmt.setString(3, business);
            System.out.println(ssql);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                result = getEntity(rs);
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

}
