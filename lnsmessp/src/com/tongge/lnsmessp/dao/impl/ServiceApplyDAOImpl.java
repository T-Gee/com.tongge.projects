package com.tongge.lnsmessp.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tongge.lnsmessp.dao.ServiceApplyDAO;
import com.tongge.lnsmessp.entities.BusiapplyEntity;
import com.tongge.lnsmessp.entities.ServiceapplyEntity;
import com.tongge.supportdb.JDBCUtils;
import com.tongge.tools.common.lang.StringUtils;

public class ServiceApplyDAOImpl implements ServiceApplyDAO {

    public int addEntity(ServiceapplyEntity entity) {
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String isql = "insert into serviceapply (userid,title,shortTitle,contacts,contactMobile,description,lastupddate) "
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

    @Override
    public List<ServiceapplyEntity> getByTitle(String title) {
        List<ServiceapplyEntity> reuslt = new ArrayList<ServiceapplyEntity>();
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String ssql = "select * from serviceapply where 1=1 ";
            if (!StringUtils.isBlank(title)) {
                ssql += "and title = '" + title + "' ";
            }
            PreparedStatement pstmt = conn.prepareStatement(ssql);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                ServiceapplyEntity entity = new ServiceapplyEntity();
                reuslt.add(entity);
                entity.setCode(rs.getInt("code"));
                entity.setUserid(rs.getString("userid"));
                entity.setTitle(rs.getString("title"));
                entity.setShortTitle(rs.getString("shortTitle"));
                entity.setContacts(rs.getString("contacts"));
                entity.setContactMobile(rs.getString("contactMobile"));
                entity.setDescription(rs.getString("description"));
                entity.setOrigin(rs.getInt("origin"));
                entity.setLastupddate(rs.getDate("lastupddate"));
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

}
