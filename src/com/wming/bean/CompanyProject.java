package com.wming.bean;

import java.util.List;

public class CompanyProject {
    private Integer id;

    private Integer pid;

    private Integer cid;

    private List<Project> projects;

    private List<CompanyUser> companyUsers;


    public List<CompanyUser> getCompanyUsers() {
        return companyUsers;
    }

    public void setCompanyUsers(List<CompanyUser> companyUsers) {
        this.companyUsers = companyUsers;
    }

    public List<Project> getProjects() {
        return projects;
    }

    public void setProjects(List<Project> projects) {
        this.projects = projects;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }
}