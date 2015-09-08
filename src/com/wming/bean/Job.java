package com.wming.bean;

import java.util.List;

/**
 * job实体类
 */
public class Job {
    private Integer id;

    private String jobsummary;

    private String jobtype;

    private String jobexperience;

    private String education;

    private String require;

    private String companyName;

    private List<User> userList;

    private  Integer companyId;

    private  List<CompanyUser> companyList;



    public List<CompanyUser> getCompanyList() {
        return companyList;
    }

    public void setCompanyList(List<CompanyUser> companyList) {
        this.companyList = companyList;
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getJobsummary() {
        return jobsummary;
    }

    public void setJobsummary(String jobsummary) {
        this.jobsummary = jobsummary == null ? null : jobsummary.trim();
    }

    public String getJobtype() {
        return jobtype;
    }

    public void setJobtype(String jobtype) {
        this.jobtype = jobtype == null ? null : jobtype.trim();
    }

    public String getJobexperience() {
        return jobexperience;
    }

    public void setJobexperience(String jobexperience) {
        this.jobexperience = jobexperience == null ? null : jobexperience.trim();
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
    }


    public String getRequire() {
        return require;
    }

    public void setRequire(String require) {
        this.require = require == null ? null : require.trim();
    }
}