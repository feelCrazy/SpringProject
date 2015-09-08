package com.wming.mapper;

import com.wming.bean.CompanyUser;

import java.util.List;

/**
 * sql映射接口
 */

public interface CompanyUserMapper {

    CompanyUser selectLogin(String username, String password);

    List selectAll();

    void addUser(CompanyUser companyUser);

    void update(CompanyUser companyUser);

    void deleteById(int id);

}