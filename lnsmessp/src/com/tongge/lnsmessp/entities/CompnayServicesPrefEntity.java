package com.tongge.lnsmessp.entities;

import java.sql.Date;

public class CompnayServicesPrefEntity {
    private int id;
    private String compnayid;
    private String serviceid;
    private String operator;
    private Date lastupddate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCompnayid() {
        return compnayid;
    }

    public void setCompnayid(String compnayid) {
        this.compnayid = compnayid;
    }

    public String getServiceid() {
        return serviceid;
    }

    public void setServiceid(String serviceid) {
        this.serviceid = serviceid;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public Date getLastupddate() {
        return lastupddate;
    }

    public void setLastupddate(Date lastupddate) {
        this.lastupddate = lastupddate;
    }

}
