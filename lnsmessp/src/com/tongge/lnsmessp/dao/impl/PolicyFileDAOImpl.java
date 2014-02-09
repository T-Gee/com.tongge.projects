package com.tongge.lnsmessp.dao.impl;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tongge.lnsmessp.dao.PolicyFileDAO;
import com.tongge.lnsmessp.entities.PolicyFileEntity;
import com.tongge.supportdb.JDBCUtils;
import com.tongge.supportdb.exception.JDBCUTilsException;

public class PolicyFileDAOImpl extends BaseDAOImpl implements PolicyFileDAO {

    public List<PolicyFileEntity> getFileList() {
        Connection conn = null;
        ArrayList<PolicyFileEntity> result = new ArrayList<PolicyFileEntity>();
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String ssql = "select id,filename,lastupddate from policyfile where 1=1";
            PreparedStatement pstmt = conn.prepareStatement(ssql);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                PolicyFileEntity file = new PolicyFileEntity();
                file.setId(rs.getInt("id"));
                file.setFilename(rs.getString("filename"));
                file.setLastupddate(rs.getDate("lastupddate"));
                result.add(file);
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

    public PolicyFileEntity getFileDetailById(String id) {
        Connection conn = null;
        PolicyFileEntity file = new PolicyFileEntity();
        try {
            // check 唯一性
            conn = JDBCUtils.getConn();
            String ssql = "select id,filename,content,attachment,attachmentpath from policyfile where id = ? ";
            PreparedStatement pstmt = conn.prepareStatement(ssql);
            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                file.setId(rs.getInt("id"));
                file.setFilename(rs.getString("filename"));
                file.setContent(getBlob(rs, "content"));
                file.setAttachment(rs.getString("attachment"));
                file.setAttachmentpath(rs.getString("attachmentpath"));
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
        return file;
    }

}
