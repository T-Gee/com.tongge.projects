package com.tongge.lnsmessp.entities;

import java.sql.Date;

import com.tongge.lnsmessp.common.Constant;

public class UserEntity {

    private String id;

    private String username;

    private String password;

    private String kind;
    // 服务机构（全称） ,个人名称、企业名（全称）
    private String title;

    /* 机构 */
    // 营业范围
    private String shortTitle;
    // 特色服务
    private String specialService;
    // 注册资本金(万元)
    private Double author;
    // 组织机构代码
    private String origin;
    // 公司注册地
    private String companyAddress;
    // 公司办公地
    private String officeCompany;

    // 公司人数
    private int companyNumber;
    // 服务类型
    private String servicesType;

    /* 公司 */
    // 所属产业
    private String respectiveIndustries;
    // 公司法人代表
    private String companyLeader;
    
    private Date createdate;

    public String getUsername() {
        return username;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getShortTitle() {
        return shortTitle;
    }

    public void setShortTitle(String shortTitle) {
        this.shortTitle = shortTitle;
    }

    public String getSpecialService() {
        return specialService;
    }

    public void setSpecialService(String specialService) {
        this.specialService = specialService;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress;
    }

    public String getOfficeCompany() {
        return officeCompany;
    }

    public void setOfficeCompany(String officeCompany) {
        this.officeCompany = officeCompany;
    }

    public int getCompanyNumber() {
        return companyNumber;
    }

    public void setCompanyNumber(int companyNumber) {
        this.companyNumber = companyNumber;
    }

    public String getServicesType() {
        return servicesType;
    }

    public void setServicesType(String servicesType) {
        this.servicesType = servicesType;
    }

    public String getRespectiveIndustries() {
        return respectiveIndustries;
    }

    public void setRespectiveIndustries(String respectiveIndustries) {
        this.respectiveIndustries = respectiveIndustries;
    }

    public String getCompanyLeader() {
        return companyLeader;
    }

    public void setCompanyLeader(String companyLeader) {
        this.companyLeader = companyLeader;
    }

    public Double getAuthor() {
        return author;
    }

    public void setAuthor(Double author) {
        this.author = author;
    }

    public String toDOMString() {
        return "<li><a href=" + Constant.DOMAIN + "orgservices.do?method=showdetails&id='" + id
                + " target='_blank' title='" + title + "'>" + title + "</a></li>";
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

}
