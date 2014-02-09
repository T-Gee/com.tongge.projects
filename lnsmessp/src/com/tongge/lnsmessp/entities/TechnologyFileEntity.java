package com.tongge.lnsmessp.entities;

import java.util.Date;

import com.tongge.lnsmessp.common.Constant;

public class TechnologyFileEntity {
    private int id;
    private String filename;
    private Date lastupddate;
    private String type;

    private String content;

    private String attachment;
    private String attachmentpath;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public Date getLastupddate() {
        return lastupddate;
    }

    public void setLastupddate(Date lastupddate) {
        this.lastupddate = lastupddate;
    }

    public String toDOMString() {
        return "<li><a href='" + Constant.DOMAIN + "technology.do?method=file&id="+id+"'>" + filename + "</a><span>" + lastupddate
                + "</span></li>";
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAttachment() {
        return attachment;
    }

    public void setAttachment(String attachment) {
        this.attachment = attachment;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAttachmentpath() {
        return attachmentpath;
    }

    public void setAttachmentpath(String attachmentpath) {
        this.attachmentpath = attachmentpath;
    }
    
}
