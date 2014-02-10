package com.tongge.lnsmessp.entities;

import java.sql.Date;

public class BusiapplyEntity {
    
    private String userid;
    private String title;
    private String shortTitle;
    private String contacts;
    private String contactMobile;
    private String description;
    private int origin;
    private int busicode;
    private Date lastupddate;
    //进度：默认值  ： 未分配
    private String proccess;
    //是否评价 默认值：否(完成后可评价)
    private String isValuing;
    
    public String getUserid() {
        return userid;
    }
    public void setUserid(String userid) {
        this.userid = userid;
    }
    public String getShortTitle() {
        return shortTitle;
    }
    public void setShortTitle(String shortTitle) {
        this.shortTitle = shortTitle;
    }
    public String getContacts() {
        return contacts;
    }
    public void setContacts(String contacts) {
        this.contacts = contacts;
    }
    public String getContactMobile() {
        return contactMobile;
    }
    public void setContactMobile(String contactMobile) {
        this.contactMobile = contactMobile;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public int getOrigin() {
        return origin;
    }
    public void setOrigin(int origin) {
        this.origin = origin;
    }
    public int getBusicode() {
        return busicode;
    }
    public void setBusicode(int busicode) {
        this.busicode = busicode;
    }
    public Date getLastupddate() {
        return lastupddate;
    }
    public void setLastupddate(Date lastupddate) {
        this.lastupddate = lastupddate;
    }
    public String getProccess() {
        return proccess;
    }
    public void setProccess(String proccess) {
        this.proccess = proccess;
    }
    public String getIsValuing() {
        return isValuing;
    }
    public void setIsValuing(String isValuing) {
        this.isValuing = isValuing;
    }

}
