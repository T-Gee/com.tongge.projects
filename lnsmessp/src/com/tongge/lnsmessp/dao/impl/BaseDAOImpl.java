package com.tongge.lnsmessp.dao.impl;

import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDAOImpl {

    public Object get() {
        return null;

    }

    public String getBlob(ResultSet rs, String column) throws SQLException {
        Blob blob = rs.getBlob(column);
        int bolblen = (int) blob.length();
        byte[] data = blob.getBytes(1, bolblen);
        return new String(data);
    }
}
