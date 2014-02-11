package com.tongge.lnsmessp.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tongge.lnsmessp.dao.UserDAO;
import com.tongge.lnsmessp.entities.UserEntity;
import com.tongge.supportdb.JDBCUtils;
import com.tongge.supportdb.exception.JDBCUTilsException;

public class UserDAOImpl implements UserDAO {

    public UserEntity getUserByName(String username) throws SQLException {
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String ssql = "select * from user where username = ? ";
            PreparedStatement pstmt = conn.prepareStatement(ssql);
            pstmt.setString(1, username);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                return getEntity(rs);
            }
            return null;
        } finally {
            try {
                JDBCUtils.close(conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public int addUser(UserEntity user) throws SQLException {
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String isql = "insert into user (id,username,password,kind,shortTitle,specialService,author,origin,"
                    + "companyAddress,officeCompany,companyNumber,servicesType,respectiveIndustries,companyLeader,title,createdate) "
                    + " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(isql);
            pstmt.setString(1, user.getId());
            pstmt.setString(2, user.getUsername());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getKind());
            pstmt.setString(5, user.getShortTitle());
            pstmt.setString(6, user.getSpecialService());
            pstmt.setDouble(7, user.getAuthor());
            pstmt.setString(8, user.getOrigin());
            pstmt.setString(9, user.getCompanyAddress());
            pstmt.setString(10, user.getOfficeCompany());
            pstmt.setInt(11, user.getCompanyNumber());
            pstmt.setString(12, user.getServicesType());
            pstmt.setString(13, user.getRespectiveIndustries());
            pstmt.setString(14, user.getCompanyLeader());
            pstmt.setString(15, user.getTitle());
            pstmt.setDate(16, new Date(System.currentTimeMillis()));
            return pstmt.executeUpdate();
        } finally {
            try {
                JDBCUtils.close(conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public List<UserEntity> getUserByType(String type) throws SQLException {
        List<UserEntity> result = new ArrayList<UserEntity>();
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String ssql = "select * from user where kind = ? ";
            PreparedStatement pstmt = conn.prepareStatement(ssql);
            pstmt.setString(1, type);
            ResultSet rs = pstmt.executeQuery();
            System.out.println(ssql);
            while (rs.next()) {
                result.add(getEntity(rs));
            }
            return result;
        } finally {
            try {
                JDBCUtils.close(conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    public List<UserEntity> getUserByServicesType(String type) throws SQLException {
        List<UserEntity> result = new ArrayList<UserEntity>();
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String ssql = "select * from user where kind = 'services' and servicesType = ? ";
            PreparedStatement pstmt = conn.prepareStatement(ssql);
            pstmt.setString(1, type);
            ResultSet rs = pstmt.executeQuery();
            System.out.println(ssql);
            while (rs.next()) {
                result.add(getEntity(rs));
            }
            return result;
        } finally {
            try {
                JDBCUtils.close(conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void updPwd(String id, String newPwd) {
        Connection conn = null;
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String ssql = "update  user set password = ? where id = ? ";
            PreparedStatement pstmt = conn.prepareStatement(ssql);
            pstmt.setString(1, newPwd);
            pstmt.setString(2, id);
            pstmt.executeUpdate();
            System.out.println(ssql);
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
    }

    private UserEntity getEntity(ResultSet rs) throws SQLException {
        UserEntity user = new UserEntity();
        user.setId(rs.getString("id"));
        user.setUsername(rs.getString("username"));
        user.setPassword(rs.getString("password"));
        user.setKind(rs.getString("kind"));
        user.setShortTitle(rs.getString("shortTitle"));
        user.setSpecialService(rs.getString("specialService"));
        user.setAuthor(rs.getDouble("Author"));
        user.setOrigin(rs.getString("origin"));
        user.setCompanyAddress(rs.getString("companyAddress"));
        user.setOfficeCompany(rs.getString("officeCompany"));
        user.setCompanyNumber(rs.getInt("companyNumber"));
        user.setServicesType(rs.getString("servicesType"));
        user.setRespectiveIndustries(rs.getString("respectiveIndustries"));
        user.setCompanyLeader(rs.getString("companyLeader"));
        user.setTitle(rs.getString("title"));
        return user;
    }
}
