package com.wming.bean;

public class Project {
    private Integer id;

    private String projectname;

    private String projecttype;

    private String projectcompany;

    private String projectinfo;

    private String projectfunds;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProjectname() {
        return projectname;
    }

    public void setProjectname(String projectname) {
        this.projectname = projectname == null ? null : projectname.trim();
    }

    public String getProjecttype() {
        return projecttype;
    }

    public void setProjecttype(String projecttype) {
        this.projecttype = projecttype == null ? null : projecttype.trim();
    }

    public String getProjectcompany() {
        return projectcompany;
    }

    public void setProjectcompany(String projectcompany) {
        this.projectcompany = projectcompany == null ? null : projectcompany.trim();
    }

    public String getProjectinfo() {
        return projectinfo;
    }

    public void setProjectinfo(String projectinfo) {
        this.projectinfo = projectinfo == null ? null : projectinfo.trim();
    }

    public String getProjectfunds() {
        return projectfunds;
    }

    public void setProjectfunds(String projectfunds) {
        this.projectfunds = projectfunds == null ? null : projectfunds.trim();
    }
}