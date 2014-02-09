package com.tongge.supportdb.exception;

import java.sql.SQLException;

public class JDBCUTilsException extends SQLException {

    private static final long serialVersionUID = 5404089542565123707L;

    public JDBCUTilsException() {
        super();
        // TODO Auto-generated constructor stub
    }

    public JDBCUTilsException(String message, Throwable cause) {
        super(message, cause);
        // TODO Auto-generated constructor stub
    }

    public JDBCUTilsException(String message) {
        super(message);
        // TODO Auto-generated constructor stub
    }

    public JDBCUTilsException(Throwable cause) {
        super(cause);
        // TODO Auto-generated constructor stub
    }


}
