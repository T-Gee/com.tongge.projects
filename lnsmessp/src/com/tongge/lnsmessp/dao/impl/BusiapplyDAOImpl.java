package com.tongge.lnsmessp.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tongge.lnsmessp.dao.BusiapplyDAO;
import com.tongge.lnsmessp.entities.BusiapplyEntity;
import com.tongge.supportdb.JDBCUtils;
import com.tongge.tools.common.lang.StringUtils;

public class BusiapplyDAOImpl implements BusiapplyDAO {

    public int addEntity(BusiapplyEntity entity) {
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String isql = "insert into busiapply (userid,title,shortTitle,contacts,contactMobile,description,lastupddate) "
                    + " values(?,?,?,?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(isql);
            pstmt.setString(1, entity.getUserid());
            pstmt.setString(2, entity.getTitle());
            pstmt.setString(3, entity.getShortTitle());
            pstmt.setString(4, entity.getContacts());
            pstmt.setString(5, entity.getContactMobile());
            pstmt.setString(6, entity.getDescription());
            pstmt.setDate(7, new Date(System.currentTimeMillis()));
            return pstmt.executeUpdate();
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

    public List<BusiapplyEntity> queryObjectsByTitleOrigin(String title, int origin) {
        List<BusiapplyEntity> reuslt = new ArrayList<BusiapplyEntity>();
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String ssql = "select * from busiapply where 1=1 ";
            if (!StringUtils.isBlank(title)) {
                ssql += "and title = '" + title + "' ";
            }
            if (origin == -1) {
                ssql += "and origin = " + origin ;
            }
            System.out.println(ssql);
            PreparedStatement pstmt = conn.prepareStatement(ssql);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                BusiapplyEntity entity = new BusiapplyEntity();
                reuslt.add(entity);
                entity.setBusicode(rs.getInt("busicode"));
                entity.setUserid(rs.getString("userid"));
                entity.setTitle(rs.getString("title"));
                entity.setShortTitle(rs.getString("shortTitle"));
                entity.setContacts(rs.getString("contacts"));
                entity.setContactMobile(rs.getString("contactMobile"));
                entity.setDescription(rs.getString("description"));
                entity.setOrigin(rs.getInt("origin"));
                entity.setLastupddate(rs.getDate("lastupddate"));
                entity.setProccess(rs.getString("proccess"));
                entity.setIsValuing(rs.getString("isValuing"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JDBCUtils.close(conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return reuslt;
    }

    public BusiapplyEntity queryObjectsById(String id) {
        List<BusiapplyEntity> reuslt = new ArrayList<BusiapplyEntity>();
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String ssql = "select * from busiapply where 1=1  ";
            if (!StringUtils.isBlank(id)) {
                ssql += "and busicode = " + id+ " ";
            }
            System.out.println(ssql);
            PreparedStatement pstmt = conn.prepareStatement(ssql);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                BusiapplyEntity entity = new BusiapplyEntity();
                entity.setBusicode(rs.getInt("busicode"));
                entity.setUserid(rs.getString("userid"));
                entity.setTitle(rs.getString("title"));
                entity.setShortTitle(rs.getString("shortTitle"));
                entity.setContacts(rs.getString("contacts"));
                entity.setContactMobile(rs.getString("contactMobile"));
                entity.setDescription(rs.getString("description"));
                entity.setOrigin(rs.getInt("origin"));
                entity.setLastupddate(rs.getDate("lastupddate"));
                entity.setProccess(rs.getString("proccess"));
                entity.setIsValuing(rs.getString("isValuing"));
                return entity;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JDBCUtils.close(conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

}
